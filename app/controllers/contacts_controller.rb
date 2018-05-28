class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path
    else
      flash.now[:error] = "no se envio"
      redirect_to root_path
    end
  end
end
