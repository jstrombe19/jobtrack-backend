class Api::V1::ContactsController < ApplicationController
  before_action :get_all_contacts, only: [:index]
  before_action :find_this_contact, only: [:show, :edit, :update, :destroy]

  def index
    render json: @contacts
  end

  def show
    render json: @contact
  end

  def create
    @contact = Contact.new
    @contact.name = params["name"]
    @contact.email = params["email"]
    @contact.phone = params["phone"]
    @contact.source = params["source"]
    @contact.job_id = params["job_id"]
    @contact.save
  end

  def edit
    render json: @contact
  end

  def update
  end

  def destroy
    @contact = Contact.find(params[:id])
    Contact.destroy(@contact)
    redirect_to :index
  end

  private

  def get_all_contacts
    @contacts = @current_user.contacts
  end

  def find_this_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:id, :name, :email, :phone, :source, :job_id, :user_id)
  end

end
