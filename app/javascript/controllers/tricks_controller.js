import { Controller } from "@hotwired/stimulus"
import Trix from 'trix'
import Rails from "@rails/ujs"

addHeadingAttributes()

export default class extends Controller {
  static get targets() {
      return [ "field" ]
  }

  connect() {
    // this.addMediaButton()
    // this.addMediaDialog()
    // this.eventListenerForMediaButton()

    this.addEmbedButton()
    this.addEmbedDialog()
    this.eventListenerForEmbedButton()
    this.eventListenerForAddEmbedButton()

    this.insertHeadingElements()
  }

  //////////////// MEDIA ////////////////////////////////////////////////////

  // addMediaButton() {
  //   const buttonHTML = '<button type="button" class="trix-button" data-trix-attribute="media" data-trix-action="media" title="Media" tabindex="-1">Image</button>'
  //   this.buttonGroupFileTools.insertAdjacentHTML("beforeend", buttonHTML)
  // }
  //
  // addMediaDialog(){
  //   const dialogHTML = `<div class="trix-dialog trix-dialog--link trix-dialog--media" data-trix-dialog="media" data-trix-dialog-attribute="media">
  //                         <div class="trix-dialog__link-fields">
  //                           <input type="text" name="media" class="trix-input trix-input--dialog" placeholder="Search for Media" aria-label="Media Picker" required="" data-trix-input="" disabled="disabled">
  //                           <div class="trix-button-group">
  //                             <input type="button" class="trix-button trix-button--dialog" data-trix-custom="add-media" value="Add">
  //                           </div>
  //                           </div>
  //                           <div id='media-finder' class='media-finder' data-trix-custom="media-finder">
  //                         </div>
  //                       </div>`
  //   this.dialogsElement.insertAdjacentHTML("beforeend", dialogHTML)
  // }
  //
  // eventListenerForMediaButton(){
  //
  //   document.querySelector('[data-trix-action="media"]').addEventListener("click", event => {
  //     const dialog = document.querySelector('[data-trix-dialog="media"]')
  //     const mediaInput = document.querySelector('[name="media"]')
  //     if (event.target.classList.contains("trix-active")) {
  //       event.target.classList.remove("trix-active");
  //       dialog.classList.remove("trix-active");
  //       delete dialog.dataset.trixActive;
  //       mediaInput.setAttribute("disabled", "disabled");
  //     } else {
  //       event.target.classList.add("trix-active");
  //       dialog.classList.add("trix-active");
  //       dialog.dataset.trixActive = "";
  //       mediaInput.removeAttribute("disabled");
  //       mediaInput.focus();
  //
  //       console.log('get medias')
  //       let place = dialog.querySelector('[data-trix-custom="media-finder"]')
  //       fetch('/admin/medias/search')
  //         .then(response => response.text())
  //         .then(html => place.innerHTML = html)
  //       // Rails.ajax({
  //       //   type: 'GET',
  //       //   url: '/admin/medias/search',
  //       //   success: (one, thing, more) => {
  //       //     console.log(JSON.stringify(one))
  //       //     console.log(one)
  //       //     console.log(thing)
  //       //     console.log(more)
  //       //     let place = dialog.querySelector('[data-trix-custom="media-finder"]')
  //       //     console.log(place)
  //       //     place.innerHTML = content
  //       //   }
  //       // })
  //     }
  //   })
  // }
  //
  // choosemedia(){
  //   console.log('choosemedia')
  // }

  //////////////// EMBEDS ////////////////////////////////////////////////////

  addEmbedButton() {
    const buttonHTML = '<button type="button" class="trix-button" data-trix-attribute="embed" data-trix-action="embed" title="Embed" tabindex="-1">Embed</button>'
    this.buttonGroupBlockTools.insertAdjacentHTML("beforeend", buttonHTML)
  }


  addEmbedDialog() {
    const dialogHTML = `<div class="trix-dialog trix-dialog--link" data-trix-dialog="embed" data-trix-dialog-attribute="embed">
                          <div class="trix-dialog__link-fields">
                            <input type="text" name="embed" class="trix-input trix-input--dialog" placeholder="Paste your URL" aria-label="embed code" required="" data-trix-input="" disabled="disabled">
                            <div class="trix-button-group">
                              <input type="button" class="trix-button trix-button--dialog" data-trix-custom="add-embed" value="Add">
                            </div>
                          </div>
                        </div>`
    this.dialogsElement.insertAdjacentHTML("beforeend", dialogHTML)
  }

  eventListenerForEmbedButton() {
    console.log(this)
    console.log(this.element)

    document.querySelector('[data-trix-action="embed"]').addEventListener("click", event => {
      const dialog = document.querySelector('[data-trix-dialog="embed"]')
      const embedInput = document.querySelector('[name="embed"]')
      if (event.target.classList.contains("trix-active")) {
        event.target.classList.remove("trix-active");
        dialog.classList.remove("trix-active");
        delete dialog.dataset.trixActive;
        embedInput.setAttribute("disabled", "disabled");
      } else {
        event.target.classList.add("trix-active");
        dialog.classList.add("trix-active");
        dialog.dataset.trixActive = "";
        embedInput.removeAttribute("disabled");
        embedInput.focus();
      }
    })
  }
  //
  eventListenerForAddEmbedButton() {
    document.querySelector('[data-trix-custom="add-embed"]').addEventListener("click", event => {
      const content = document.querySelector("[name='embed']").value
      if (content) {
        let _this = this
        let formData = new FormData()
        formData.append("content", content)
        Rails.ajax({
          type: 'PATCH',
          url: '/admin/embed.json',
          data: formData,
          success: ({content, sgid}) => {
            const attachment = new Trix.Attachment({content, sgid})
            _this.element.editor.insertAttachment(attachment)
            _this.element.editor.insertLineBreak()
          }
        })
      }
    })
  }
  //////////////// HEADERS ////////////////////////////////////////////////////
  insertHeadingElements() {
    this.removeOriginalHeadingButton()
    this.insertNewHeadingButton()
    this.insertHeadingDialog()
  }
  removeOriginalHeadingButton() {
   this.buttonGroupBlockTools.removeChild(this.originalHeadingButton)
  }

  insertNewHeadingButton() {
   this.buttonGroupBlockTools.insertAdjacentHTML("afterbegin", this.headingButtonTemplate)
  }

  insertHeadingDialog() {
   this.dialogsElement.insertAdjacentHTML("beforeend", this.dialogHeadingTemplate)
  }

  get dialogHeadingTemplate() {
    return `
      <div class="trix-dialog trix-dialog--heading" data-trix-dialog="x-heading" data-trix-dialog-attribute="x-heading">
        <div class="trix-dialog__link-fields">

          <div class="trix-button-group">
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading1">H1</button>
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading2">H2</button>
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading3">H3</button>
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading4">H4</button>
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading5">H5</button>
            <button type="button" class="trix-button trix-button--dialog" data-trix-attribute="heading6">H6</button>
          </div>
        </div>
      </div>
    `
  }

  get headingButtonTemplate() {
     return '<button type="button" class="trix-button trix-button--icon trix-button--icon-heading-1" data-trix-action="x-heading" title="Heading" tabindex="-1">Heading</button>'
   }

  //////////////// UTILS ////////////////////////////////////////////////////
  get buttonGroupBlockTools() {
   return this.toolbarElement.querySelector("[data-trix-button-group=block-tools]")
 }

 get buttonGroupTextTools() {
   return this.toolbarElement.querySelector("[data-trix-button-group=text-tools]")
 }

 get buttonGroupFileTools(){
   return this.toolbarElement.querySelector("[data-trix-button-group=file-tools]")
 }

 get dialogsElement() {
   return this.toolbarElement.querySelector("[data-trix-dialogs]")
 }

 get toolbarElement() {
    return this.element.toolbarElement
  }

 get originalHeadingButton() {
   return this.toolbarElement.querySelector("[data-trix-attribute=heading1]")
 }





  // insertAttachment(event) {
  //   let attachment = new Trix.Attachment({content: `<span class="trix-attachment-starship-image" data-label="Alt text">
  //     <img src="${event.detail.embeddedUrl}" />
  //   </span>`, contentType: "Starship::Image"})
  //   this.editor.insertAttachment(attachment)
  // }
  //
  //
  // get editor() {
  //   return this.editorTarget.editor
  // }
}
function addHeadingAttributes() {
  Array.from(["h1", "h2", "h3", "h4", "h5", "h6"]).forEach((tagName, i) => {
    Trix.config.blockAttributes[`heading${(i + 1)}`] = { tagName: tagName, terminal: true, breakOnReturn: true, group: false }
  })
}
