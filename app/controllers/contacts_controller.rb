class ContactsController < ApplicationController
  def index
  	 data = $cio_connect.list_contacts(:account => $cio_acct)

  	 @contacts = JSON.parse(data.body)["matches"]

  	 

  end

  def show
	data = $cio_connect.list_contacts(:account => $cio_acct)

  	 @contacts = JSON.parse(data.body)["matches"]

  end
end
	