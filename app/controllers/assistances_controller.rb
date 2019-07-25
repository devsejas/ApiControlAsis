class AssistancesController < ApplicationController
  before_action :set_assistance, only: [:show, :update, :destroy]

  # GET /assistances
  def index
    @assistances = Assistance.all

    render json: @assistances
  end

  # GET /assistances/1
  def show
    render json: @assistance
  end

  # POST /assistances
  def create
    @assistance = Assistance.new(assistance_params)

    if @assistance.save
      render json: @assistance, status: :created, location: @assistance
    else
      render json: @assistance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assistances/1
  def update
    if @assistance.update(assistance_params)
      render json: @assistance
    else
      render json: @assistance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assistances/1
  def destroy
    @assistance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistance
      @assistance = Assistance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assistance_params
      params.require(:assistance).permit(:user_id, :type_id, :code)
    end
end
