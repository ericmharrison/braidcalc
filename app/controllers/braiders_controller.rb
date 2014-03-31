class BraidersController < ApplicationController
  before_action :set_braider, only: [:show, :edit, :update, :destroy]

  # GET /braiders
  # GET /braiders.json
  def index
    @braiders = Braider.find(:all)
  end

  # GET /braiders/1
  # GET /braiders/1.json
  def show
  end

  # GET /braiders/new
  def new
    @braider = Braider.new
  end

  # GET /braiders/1/edit
  def edit
  end

  # POST /braiders
  # POST /braiders.json
  def create
    @braider = Braider.new(braider_params)

    respond_to do |format|
      if @braider.save
        format.html { redirect_to @braider, notice: 'Braider was successfully created.' }
        format.json { render action: 'show', status: :created, location: @braider }
      else
        format.html { render action: 'new' }
        format.json { render json: @braider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /braiders/1
  # PATCH/PUT /braiders/1.json
  def update
    respond_to do |format|
      if @braider.update(braider_params)
        format.html { redirect_to @braider, notice: 'Braider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @braider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /braiders/1
  # DELETE /braiders/1.json
  def destroy
    @braider.destroy
    respond_to do |format|
      format.html { redirect_to braiders_url }
      format.json { head :no_content }
    end
  end
  
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_braider
      @braider = Braider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def braider_params
      params.require(:braider).permit(:name, :number_of_carriers, :carrier_speed, :carrier_diameter)
    end
end
