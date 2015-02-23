Rails.application.routes.draw do
  get 'contacts' => "contacts#index"
  get 'contacts/index' => "contacts#index"
  get 'contacts/show' => "contacts#show"
  get 'contacts/all' => "contacts#all"
end
