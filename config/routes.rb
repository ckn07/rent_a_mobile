Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mobiles do
    resources :bookings, only: [:index, :show, :new, :create] do
      resources :reviews, only: [:new, :create]
    end
    resources :reviews, only: [:index, :show]
  end

  get "dashboard", to: 'pages#dashboard', as: :dashboard

end

# REVIEWS
#    mobile_booking_reviews POST   /mobiles/:mobile_id/bookings/:booking_id/reviews(.:format)        reviews#create
# new_mobile_booking_review GET    /mobiles/:mobile_id/bookings/:booking_id/reviews/new(.:format)    reviews#new
#            mobile_reviews GET    /mobiles/:mobile_id/reviews(.:format)                             reviews#index
#             mobile_review GET    /mobiles/:mobile_id/reviews/:id(.:format)                         reviews#show


# BOOKINGS
#           mobile_bookings GET    /mobiles/:mobile_id/bookings(.:format)                            bookings#index
#                           POST   /mobiles/:mobile_id/bookings(.:format)                            bookings#create
#        new_mobile_booking GET    /mobiles/:mobile_id/bookings/new(.:format)                        bookings#new
#            mobile_booking GET    /mobiles/:mobile_id/bookings/:id(.:format)                        bookings#show

# MOBILES
#                   mobiles GET    /mobiles(.:format)                                                mobiles#index
#                           POST   /mobiles(.:format)                                                mobiles#create
#                new_mobile GET    /mobiles/new(.:format)                                            mobiles#new
#               edit_mobile GET    /mobiles/:id/edit(.:format)                                       mobiles#edit
#                    mobile GET    /mobiles/:id(.:format)                                            mobiles#show
#                           PATCH  /mobiles/:id(.:format)                                            mobiles#update
#                           PUT    /mobiles/:id(.:format)                                            mobiles#update
#                           DELETE /mobiles/:id(.:format)                                            mobiles#destroy
#

# USERS
#        new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#            user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#    destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#       new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#      edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#           user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                         PUT    /users/password(.:format)                                                                devise/passwords#update
#                         POST   /users/password(.:format)                                                                devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#   new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#  edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#       user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                         PUT    /users(.:format)                                                                         devise/registrations#update
#                         DELETE /users(.:format)                                                                         devise/registrations#destroy
#                         POST   /users(.:format)                                                                         devise/registrations#create

# ROOT
#                    root GET    /
