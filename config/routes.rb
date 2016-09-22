Rails.application.routes.draw do
  
  get 'facturacion/index'

  get 'facturacion/mostrar'

  get 'facturacion/editar'

  get 'facturacion/eliminar'

  get 'facturacion/crear'

  get 'estado_boletas/index'

  get 'estado_boletas/mostrar'

  get 'estado_boletas/crear'

  get 'estado_boletas/eliminar'

  get 'estado_boletas/editar'

  get 'tickets_usuario/index'

  get 'tickets_usuario/crear'

  get 'tickets_usuario/editar'

  get 'tickets_usuario/eliminar'

  get 'tickets_usuario/mostrar'

  get 'perfil_usuario/index'

  get 'perfil_usuario/mostrar'

  get 'perfil_usuario/editar'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'plainpage#index'

   get 'admin', :to => "admin#index"
   match ':controller(/:action(/:id))', :via => [:get, :post]
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
