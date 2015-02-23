class ContactsController < ApplicationController
  def index
  	 
  end

  def all
  	data = $cio_connect.list_contacts(:account => $cio_acct)

  	@contacts = JSON.parse(data.body)["matches"]
  	
  	@converted = @contacts.map do |contact|
  					{title: contact["name"] , value: contact["sent_count"] ,  color: "#2C3E50" }
  				end

  	render json: @converted
  end


  def show

  end
end
	