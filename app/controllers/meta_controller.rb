class MetaController < ApplicationController
  before_action :set_metum, only: [:show, :update, :destroy]

  # GET /meta
  # GET /meta.json
  def index
    @meta = Metum.all
  end

  # GET /meta/1
  # GET /meta/1.json
  def show
  end

  # POST /meta
  # POST /meta.json
  def create
    @metum = Metum.new(metum_params)

    if @metum.save
      render :show, status: :created, location: @metum
    else
      render json: @metum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meta/1
  # PATCH/PUT /meta/1.json
  def update
    if @metum.update(metum_params)
      render :show, status: :ok, location: @metum
    else
      render json: @metum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meta/1
  # DELETE /meta/1.json
  def destroy
    @metum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metum
      @metum = Metum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metum_params
      params.require(:metum).permit(:user_id, :submission_id, :read, :evaluation, :last_edited)
    end
end
