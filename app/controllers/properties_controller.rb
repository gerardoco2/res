class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :set_owner, only: [:show, :edit, :new, :create, :update, :destroy]


  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    @property.pictures.build
  end

  # GET /properties/1/edit
  def edit
    @property.pictures.build

  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    @property.owner_id = @owner.id

    
      
    respond_to do |format|
      if @property.save
        format.html { redirect_to owner_url(@property.owner_id), notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to owner_url(@property.owner_id), notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    def set_owner
      @owner = Owner.find(params[:owner_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:direccion, :descripcion, :nro_hab, :nro_bannos, :area, :status, :tipo_prop_id, :ciudad_id, :estado_id, :precio, :titulo, pictures_attributes: [:id, :property_id, :image, :_destroy])
    end

end
