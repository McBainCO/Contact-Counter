Rails.application.routes.draw do
  get 'contacts' => "contacts#index"
  get 'contacts/index' => "contacts#index"
end
