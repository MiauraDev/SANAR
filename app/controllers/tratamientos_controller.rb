class TratamientosController < ApplicationController
  before_action :require_login
  before_action :set_tratamiento, only: %i[ show edit update destroy ]

  # GET /tratamientos or /tratamientos.json
  def index
    @tratamientos = Tratamiento.all
  end

  # GET /tratamientos/1 or /tratamientos/1.json
  def show
  end

  # GET /tratamientos/new
  def new
    @tratamiento = Tratamiento.new
  end

  # GET /tratamientos/1/edit
  def edit
  end

  # POST /tratamientos or /tratamientos.json
  def create
    @tratamiento = Tratamiento.new(tratamiento_params)

    respond_to do |format|
      if @tratamiento.save
        format.html { redirect_to @tratamiento, notice: "" }
        format.json { render :show, status: :created, location: @tratamiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tratamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tratamientos/1 or /tratamientos/1.json
  def update
    respond_to do |format|
      if @tratamiento.update(tratamiento_params)
        format.html { redirect_to @tratamiento, notice: "" }
        format.json { render :show, status: :ok, location: @tratamiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tratamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tratamientos/1 or /tratamientos/1.json
  def destroy
    @tratamiento.destroy!

    respond_to do |format|
      format.html { redirect_to tratamientos_path, status: :see_other, notice: "" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tratamiento
      @tratamiento = Tratamiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tratamiento_params
      params.require(:tratamiento).permit(:nombre, :descripcion, :duracion, :diagnostico_id, :medico_id, :estado, :frecuencia_administracion)
    end
end
