class BraidConfigsController < ApplicationController
  before_action :set_braid_config, only: [:show, :edit, :update, :destroy]

  # GET /braid_configs
  # GET /braid_configs.json
  def index
    @braid_configs = BraidConfig.all
  end

  # GET /braid_configs/1
  # GET /braid_configs/1.json
  def show
  end

  # GET /braid_configs/new
  def new
    @braid_config = BraidConfig.new
  end

  # GET /braid_configs/1/edit
  def edit
  end

  # POST /braid_configs
  # POST /braid_configs.json
  def create
    @braid_config = BraidConfig.new(braid_config_params)

    respond_to do |format|
      if @braid_config.save
        format.html { redirect_to @braid_config, notice: 'Braid config was successfully created.' }
        format.json { render action: 'show', status: :created, location: @braid_config }
      else
        format.html { render action: 'new' }
        format.json { render json: @braid_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /braid_configs/1
  # PATCH/PUT /braid_configs/1.json
  def update
    respond_to do |format|
      if @braid_config.update(braid_config_params)
        format.html { redirect_to @braid_config, notice: 'Braid config was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @braid_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /braid_configs/1
  # DELETE /braid_configs/1.json
  def destroy
    @braid_config.destroy
    respond_to do |format|
      format.html { redirect_to braid_configs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_braid_config
      @braid_config = BraidConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def braid_config_params
      params.require(:braid_config).permit(:braider_id, :pinion_teeth, :gear_teeth, :inches_per_minute, :feet_per_hour, :picks_per_inch)
    end
end
