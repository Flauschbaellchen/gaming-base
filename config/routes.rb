Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  mount Florensia::Engine => "/"

  scope ":locale" do
    # users should not delete themselves (maybe we change this later)
    # so we skip the default registration routes
    # and recreate them again without :delete
    devise_for :users, skip: :registrations, 
      :path_names => {
        :sign_in => 'login',
        :sign_out => 'logout'
      }
    devise_scope :user do
      resource :registration,
        only: [:new, :create, :edit, :update],
        path: 'users',
        path_names: { new: 'register' },
        controller: 'devise/registrations',
        as: :user_registration do
          get :cancel
        end
    end
  end
  
  get ':locale' => "home#index", as: :root
  get '/' => "home#index"

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end