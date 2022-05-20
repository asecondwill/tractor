# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                      erd        /erd                                                                                              Erd::Engine
#                         new_user_session GET    /users/sign_in(.:format)                                                                          devise/sessions#new
#                             user_session POST   /users/sign_in(.:format)                                                                          devise/sessions#create
#                     destroy_user_session DELETE /users/sign_out(.:format)                                                                         devise/sessions#destroy
#                        new_user_password GET    /users/password/new(.:format)                                                                     devise/passwords#new
#                       edit_user_password GET    /users/password/edit(.:format)                                                                    devise/passwords#edit
#                            user_password PATCH  /users/password(.:format)                                                                         devise/passwords#update
#                                          PUT    /users/password(.:format)                                                                         devise/passwords#update
#                                          POST   /users/password(.:format)                                                                         devise/passwords#create
#                 cancel_user_registration GET    /users/cancel(.:format)                                                                           devise/registrations#cancel
#                    new_user_registration GET    /users/sign_up(.:format)                                                                          devise/registrations#new
#                   edit_user_registration GET    /users/edit(.:format)                                                                             devise/registrations#edit
#                        user_registration PATCH  /users(.:format)                                                                                  devise/registrations#update
#                                          PUT    /users(.:format)                                                                                  devise/registrations#update
#                                          DELETE /users(.:format)                                                                                  devise/registrations#destroy
#                                          POST   /users(.:format)                                                                                  devise/registrations#create
#                               admin_root GET    /admin(.:format)                                                                                  admin/site#dash
#                               admin_dash GET    /admin/dash(.:format)                                                                             admin/site#dash
#                           admin_activity GET    /admin/activity(.:format)                                                                         admin/site#activity
#                           admin_settings GET    /admin/settings(.:format)                                                                         admin/site#settings
#                           admin_homepage GET    /admin/homepage(.:format)                                                                         admin/site#homepage
#                               admin_help GET    /admin/help(.:format)                                                                             admin/site#help
#                       admin_links_search GET    /admin/links/search(.:format)                                                                     admin/links#search
#                                    admin GET    /admin/links/:id/attachment(.:format)                                                             admin/links#attachment
#                               admin_site PATCH  /admin/site/:id(.:format)                                                                         admin/site#update
#                                          PUT    /admin/site/:id(.:format)                                                                         admin/site#update
#                       admin_media_picker GET    /admin/medias/:media_id/picker(.:format)                                                          admin/medias#picker
#                   attachment_admin_media GET    /admin/medias/:id/attachment(.:format)                                                            admin/medias#attachment
#             pickercreate_new_admin_media POST   /admin/medias/new/pickercreate(.:format)                                                          admin/medias#pickercreate
#                      search_admin_medias GET    /admin/medias/search(.:format)                                                                    admin/medias#search
#                             admin_medias GET    /admin/medias(.:format)                                                                           admin/medias#index
#                                          POST   /admin/medias(.:format)                                                                           admin/medias#create
#                          new_admin_media GET    /admin/medias/new(.:format)                                                                       admin/medias#new
#                         edit_admin_media GET    /admin/medias/:id/edit(.:format)                                                                  admin/medias#edit
#                              admin_media GET    /admin/medias/:id(.:format)                                                                       admin/medias#show
#                                          PATCH  /admin/medias/:id(.:format)                                                                       admin/medias#update
#                                          PUT    /admin/medias/:id(.:format)                                                                       admin/medias#update
#                                          DELETE /admin/medias/:id(.:format)                                                                       admin/medias#destroy
#                          move_admin_page PATCH  /admin/pages/:id/move(.:format)                                                                   admin/pages#move
#                              admin_pages GET    /admin/pages(.:format)                                                                            admin/pages#index
#                                          POST   /admin/pages(.:format)                                                                            admin/pages#create
#                           new_admin_page GET    /admin/pages/new(.:format)                                                                        admin/pages#new
#                          edit_admin_page GET    /admin/pages/:id/edit(.:format)                                                                   admin/pages#edit
#                               admin_page GET    /admin/pages/:id(.:format)                                                                        admin/pages#show
#                                          PATCH  /admin/pages/:id(.:format)                                                                        admin/pages#update
#                                          PUT    /admin/pages/:id(.:format)                                                                        admin/pages#update
#                                          DELETE /admin/pages/:id(.:format)                                                                        admin/pages#destroy
#                           admin_articles GET    /admin/articles(.:format)                                                                         admin/articles#index
#                                          POST   /admin/articles(.:format)                                                                         admin/articles#create
#                        new_admin_article GET    /admin/articles/new(.:format)                                                                     admin/articles#new
#                       edit_admin_article GET    /admin/articles/:id/edit(.:format)                                                                admin/articles#edit
#                            admin_article GET    /admin/articles/:id(.:format)                                                                     admin/articles#show
#                                          PATCH  /admin/articles/:id(.:format)                                                                     admin/articles#update
#                                          PUT    /admin/articles/:id(.:format)                                                                     admin/articles#update
#                                          DELETE /admin/articles/:id(.:format)                                                                     admin/articles#destroy
#                          admin_userforms GET    /admin/userforms(.:format)                                                                        admin/userforms#index
#                                          POST   /admin/userforms(.:format)                                                                        admin/userforms#create
#                       new_admin_userform GET    /admin/userforms/new(.:format)                                                                    admin/userforms#new
#                      edit_admin_userform GET    /admin/userforms/:id/edit(.:format)                                                               admin/userforms#edit
#                           admin_userform GET    /admin/userforms/:id(.:format)                                                                    admin/userforms#show
#                                          PATCH  /admin/userforms/:id(.:format)                                                                    admin/userforms#update
#                                          PUT    /admin/userforms/:id(.:format)                                                                    admin/userforms#update
#                                          DELETE /admin/userforms/:id(.:format)                                                                    admin/userforms#destroy
#                              admin_menus GET    /admin/menus(.:format)                                                                            admin/menus#index
#                                          POST   /admin/menus(.:format)                                                                            admin/menus#create
#                           new_admin_menu GET    /admin/menus/new(.:format)                                                                        admin/menus#new
#                          edit_admin_menu GET    /admin/menus/:id/edit(.:format)                                                                   admin/menus#edit
#                               admin_menu GET    /admin/menus/:id(.:format)                                                                        admin/menus#show
#                                          PATCH  /admin/menus/:id(.:format)                                                                        admin/menus#update
#                                          PUT    /admin/menus/:id(.:format)                                                                        admin/menus#update
#                                          DELETE /admin/menus/:id(.:format)                                                                        admin/menus#destroy
#                              admin_users GET    /admin/users(.:format)                                                                            admin/users#index
#                                          POST   /admin/users(.:format)                                                                            admin/users#create
#                           new_admin_user GET    /admin/users/new(.:format)                                                                        admin/users#new
#                          edit_admin_user GET    /admin/users/:id/edit(.:format)                                                                   admin/users#edit
#                               admin_user GET    /admin/users/:id(.:format)                                                                        admin/users#show
#                                          PATCH  /admin/users/:id(.:format)                                                                        admin/users#update
#                                          PUT    /admin/users/:id(.:format)                                                                        admin/users#update
#                                          DELETE /admin/users/:id(.:format)                                                                        admin/users#destroy
#                              admin_embed PATCH  /admin/embed(.:format)                                                                            admin/embeds#update
#                                          PUT    /admin/embed(.:format)                                                                            admin/embeds#update
#                                     page GET    /pages/:id(.:format)                                                                              pages#show
#                                 articles GET    /articles(.:format)                                                                               articles#index
#                                  article GET    /articles/:id(.:format)                                                                           articles#show
#                                     root GET    /                                                                                                 articles#index
#         turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#         turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#        turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#       edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
#
# Routes for Erd::Engine:
#         GET  /                  erd/erd#index
#    edit GET  /edit(.:format)    erd/erd#edit
#         PUT  /                  erd/erd#update
# migrate PUT  /migrate(.:format) erd/erd#migrate
#    root GET  /                  erd/erd#index
#

Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    root "site#dash"
    get 'dash', to: 'site#dash'
    get 'activity', to: 'site#activity'
    get 'settings', to: 'site#settings'
    get 'homepage', to: 'site#homepage'
    get 'help', to: 'site#help'
    get 'links/search', to: 'links#search'
    get 'links/menuitems', to: 'links#menuitems'

    get 'links/:id/attachment', to: 'links#attachment'


    resources :site, only: [:update]
    resources :medias do
      get :picker
      get :attachment, on: :member
      post :pickercreate, on: :new
      collection do
        get 'search'
      end
    end
    resources :pages do
      member do
        patch :move
      end
    end
    resources :articles
    resources :userforms do
      resources :userform_submissions,  only: [:index]
      resources :userform_fields do
        member do
          patch :move
        end
      end
    end
    resources :menus do
      resources :menuitems do
        member do
          patch :move
        end
      end
    end
    resources :users
    resource :embed, only: :update
  end
  # resources :embed, only: :show
  resources :pages, only: :show
  resources :articles, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#index"

end
