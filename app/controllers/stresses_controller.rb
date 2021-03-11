class StressesController < ApplicationController
  before_action :set_stress, only: [:show, :update, :destroy]

  # GET /stresses
  def index
    @stresses = Stress.all

    render json: @stresses
  end

  # GET /stresses/1
  def show
    render json: @stress
  end

  # POST /stresses
  def create
    @stress = Stress.new(stress_params)

    if @stress.save
      render json: @stress, status: :created, location: @stress
    else
      render json: @stress.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stresses/1
  def update
    if @stress.update(stress_params)
      render json: @stress
    else
      render json: @stress.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stresses/1
  def destroy
    @stress.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stress
      @stress = Stress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stress_params
      params.require(:stress).permit(:name, :boolean, :user_id)
    end
end
