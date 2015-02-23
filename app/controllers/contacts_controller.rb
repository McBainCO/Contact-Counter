class ContactsController < ApplicationController
  def index
  	 
  end

  def all
  	@color = ["#2C3E50", "#FC4349", "#6DBCDB", "#F7E248", "#D7DADB", "#FFF"]

  	data = $cio_connect.list_contacts(:account => $cio_acct)

  	@contacts = JSON.parse(data.body)["matches"]
  	
  	@converted = @contacts.map do |contact|
  					{title: contact["name"] , value: contact["received_count"] ,  color: @color.sample }
  				end

  	render json: @converted
  end


  def show

  end
end
	