class TipoPropsController < ApplicationController
  before_action :set_tipo_prop, only: [:show, :edit, :update, :destroy]

  # GET /tipo_props
  # GET /tipo_props.json
  def index
    @tipo_props = TipoProp.all
  end

  # GET /tipo_props/1
  # GET /tipo_props/1.json
  def show
  end

  # GET /tipo_props/new
  def new
    @tipo_prop = TipoProp.new
  end

  # GET /tipo_props/1/edit
  def edit
  end

  # POST /tipo_props
  # POST /tipo_props.json
  def create
    @tipo_prop = TipoProp.new(tipo_prop_params)

    respond_to do |format|
      if @tipo_prop.save
        format.html { redirect_to @tipo_prop, notice: 'Tipo prop was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_prop }
      else
        format.html { render :new }
        format.json { render json: @tipo_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_props/1
  # PATCH/PUT /tipo_props/1.json
  def update
    respond_to do |format|
      if @tipo_prop.update(tipo_prop_params)
        format.html { redirect_to @tipo_prop, notice: 'Tipo prop was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_prop }
      else
        format.html { render :edit }
        format.json { render json: @tipo_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_props/1
  # DELETE /tipo_props/1.json
  def destroy
    @tipo_prop.destroy
    respond_to do |format|
      format.html { redirect_to tipo_props_url, notice: 'Tipo prop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_prop
      @tipo_prop = TipoProp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_prop_params
      params.require(:tipo_prop).permit(:nombre, :status)
    end
end
