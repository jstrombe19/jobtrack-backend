class Api::V1::InteractionsController < ApplicationController
  before_action :get_all_interactions, only: [:index]
  before_action :find_this_interaction, only: [:show, :edit, :update, :destroy]

  def index
    render json: @interactions
  end

  def show
    render json: @interaction
  end

  def create
    @interaction = Interaction.new
    @interaction.location = params["location"]
    @interaction.attendees = params["attendees"]
    @interaction.medium = params["medium"]
    @interaction.notes = params["notes"]
    @interaction.follow_up = params["follow_up"]
    @interaction.date = params["date"]
    @interaction.time = params["time"]
    @interaction.user_id = params["user_id"]
    @interaction.contact_id = params["contact_id"]
    @interaction.save
  end

  def edit
    render json: @interaction
  end

  def update
  end

  def destroy
    @interaction = Interaction.find(params[:id])
    Interaction.destroy(@interaction)
    redirect_to :index
  end

  private

  def get_all_interactions
    @interactions = @current_user.interactions
  end

  def find_this_interaction
    @interaction = Interaction.find(params[:id])
  end

  def interaction_params
    params.require(:interaction).permit(:id, :location, :attendees, :medium, :notes, :follow_up, :date, :time, :user_id, :contact_id)
  end

end
