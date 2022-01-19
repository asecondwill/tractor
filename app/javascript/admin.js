// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import * as bootstrap from "bootstrap"

import Trix from "trix"

import jquery from 'jquery';
window.jQuery = jquery;
window.$ = jquery;


import "./trixmods"
import "@rails/actiontext"
import Rails from "@rails/ujs"

// $(document).on("turbolinks:load", () => {
//   $('[data-toggle="tooltip"]').tooltip()
//   $('[data-toggle="popover"]').popover()
// })

// console.log('123')
//
// Trix.config.blockAttributes = $.extend(Trix.config.blockAttributes, {
//   heading2: {
//     tagName: "h2",
//     terminal: true,
//     breakOnReturn: true,
//     group: false
//   },
//   heading3: {
//     tagName: "h3",
//     terminal: true,
//     breakOnReturn: true,
//     group: false
//   },
//   heading4: {
//     tagName: "h4",
//     terminal: true,
//     breakOnReturn: true,
//     group: false
//   },
//   heading5: {
//     tagName: "h5",
//     terminal: true,
//     breakOnReturn: true,
//     group: false
//   },
//   heading6: {
//     tagName: "h6",
//     terminal: true,
//     breakOnReturn: true,
//     group: false
//   }
// });
//
// Trix.config.lang = $.extend(Trix.config.lang, {
//   image: "Image",
//   heading1: "H1",
//   heading2: "H2",
//   heading3: "H3",
//   heading4: "H4",
//   heading5: "H5",
//   heading6: "H6"
// });
//
// Trix.config.toolbar = {
//   getDefaultHTML: function() {
//     return "<div class=\"trix-button-row\">\n  <span class=\"trix-button-group trix-button-group--text-tools\" data-trix-button-group=\"text-tools\">\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-bold\" data-trix-attribute=\"bold\" data-trix-key=\"b\" title=\"" + Trix.config.lang.bold + "\" tabindex=\"-1\">" + Trix.config.lang.bold + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-italic\" data-trix-attribute=\"italic\" data-trix-key=\"i\" title=\"" + Trix.config.lang.italic + "\" tabindex=\"-1\">" + Trix.config.lang.italic + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-link\" data-trix-attribute=\"href\" data-trix-action=\"link\" data-trix-key=\"k\" title=\"" + Trix.config.lang.link + "\" tabindex=\"-1\">" + Trix.config.lang.link + "</button>\n  </span>\n  <span class=\"trix-button-group trix-button-group--block-tools\" data-trix-button-group=\"block-tools\">\n    <button type=\"button\" class=\"trix-button trix-button--text\" data-trix-attribute=\"heading1\" title=\"" + Trix.config.lang.heading1 + "\" tabindex=\"-1\">" + Trix.config.lang.heading1 + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--text\" data-trix-attribute=\"heading2\" title=\"" + Trix.config.lang.heading2 + "\" tabindex=\"-1\">" + Trix.config.lang.heading2 + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--text\" data-trix-attribute=\"heading3\" title=\"" + Trix.config.lang.heading3 + "\" tabindex=\"-1\">" + Trix.config.lang.heading3 + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--text\" data-trix-attribute=\"heading4\" title=\"" + Trix.config.lang.heading4 + "\" tabindex=\"-1\">" + Trix.config.lang.heading4 + "</button>\n  </span>\n\n  <span class=\"trix-button-group trix-button-group--block-tools\">\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-image\" data-trix-attribute=\"image\" data-trix-action=\"image\" title=\"" + Trix.config.lang.image + "\" tabindex=\"-1\">" + Trix.config.lang.image + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-quote\" data-trix-attribute=\"quote\" title=\"" + Trix.config.lang.quote + "\" tabindex=\"-1\">" + Trix.config.lang.quote + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-code\" data-trix-attribute=\"code\" title=\"" + Trix.config.lang.code + "\" tabindex=\"-1\">" + Trix.config.lang.code + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-bullet-list\" data-trix-attribute=\"bullet\" title=\"" + Trix.config.lang.bullets + "\" tabindex=\"-1\">" + Trix.config.lang.bullets + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-number-list\" data-trix-attribute=\"number\" title=\"" + Trix.config.lang.numbers + "\" tabindex=\"-1\">" + Trix.config.lang.numbers + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-decrease-nesting-level\" data-trix-action=\"decreaseNestingLevel\" title=\"" + Trix.config.lang.outdent + "\" tabindex=\"-1\">" + Trix.config.lang.outdent + "</button>\n    <button type=\"button\" class=\"trix-button trix-button--icon trix-button--icon-increase-nesting-level\" data-trix-action=\"increaseNestingLevel\" title=\"" + Trix.config.lang.indent + "\" tabindex=\"-1\">" + Trix.config.lang.indent + "</button>\n  </span>\n\n  <span class=\"trix-button-group-spacer\"></span>\n</div>\n<div class=\"trix-button-row\">\n  \n</div>\n<div class=\"trix-dialogs\" data-trix-dialogs>\n  <div class=\"trix-dialog trix-dialog--link\" data-trix-dialog=\"href\" data-trix-dialog-attribute=\"href\">\n    <div class=\"trix-dialog__link-fields\">\n      <input type=\"text\" name=\"href\" class=\"trix-input trix-input--dialog\" placeholder=\"" + Trix.config.lang.urlPlaceholder + "\" aria-label=\"" + Trix.config.lang.url + "\" required data-trix-input>\n      <div class=\"trix-button-group\">\n        <input type=\"button\" class=\"trix-button trix-button--dialog\" value=\"" + Trix.config.lang.link + "\" data-trix-method=\"setAttribute\">\n        <input type=\"button\" class=\"trix-button trix-button--dialog\" value=\"" + Trix.config.lang.unlink + "\" data-trix-method=\"removeAttribute\">\n      </div>\n    </div>\n  </div>\n</div>";
//   }
// };
//
// console.log(Trix);
