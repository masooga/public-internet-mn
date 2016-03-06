class AccesspointsController < ApplicationController
  before_action :set_accesspoint, only: [:show, :edit, :update, :destroy]

  # GET /accesspoints
  # GET /accesspoints.json
  def index
    @accesspoints = Accesspoint.all
  end

  # GET /accesspoints/1
  # GET /accesspoints/1.json
  def show
  end

  # GET /accesspoints/new
  def new
    @accesspoint = Accesspoint.new
  end

  # GET /accesspoints/1/edit
  def edit
  end

  # POST /accesspoints
  # POST /accesspoints.json
  def create
    @accesspoint = Accesspoint.new(accesspoint_params)

    respond_to do |format|
      if @accesspoint.save
        format.html { redirect_to @accesspoint, notice: 'Accesspoint was successfully created.' }
        format.json { render :show, status: :created, location: @accesspoint }
      else
        format.html { render :new }
        format.json { render json: @accesspoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accesspoints/1
  # PATCH/PUT /accesspoints/1.json
  def update
    respond_to do |format|
      if @accesspoint.update(accesspoint_params)
        format.html { redirect_to @accesspoint, notice: 'Accesspoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @accesspoint }
      else
        format.html { render :edit }
        format.json { render json: @accesspoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesspoints/1
  # DELETE /accesspoints/1.json
  def destroy
    @accesspoint.destroy
    respond_to do |format|
      format.html { redirect_to accesspoints_url, notice: 'Accesspoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accesspoint
      @accesspoint = Accesspoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accesspoint_params
      params.require(:accesspoint).permit(:streetaddress, :city, :zipcode, :publicbuilding, :wirelessavailable, :publicworkstations, :downloadspeed, :uploadspeed, :passwordrequired)
    end
end
