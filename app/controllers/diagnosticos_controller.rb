class DiagnosticosController < ApplicationController
  before_action :require_login
  before_action :set_diagnostico, only: %i[ show edit update destroy ]

  # GET /diagnosticos or /diagnosticos.json
  def index
    @diagnosticos = Diagnostico.all
  end

  # GET /diagnosticos/1 or /diagnosticos/1.json
  def show
  end

  # GET /diagnosticos/new
  def new
    @diagnostico = Diagnostico.new
  end

  # GET /diagnosticos/1/edit
  def edit
  end

  # POST /diagnosticos or /diagnosticos.json
  def create
    @diagnostico = Diagnostico.new(diagnostico_params)

    respond_to do |format|
      if @diagnostico.save
        format.html { redirect_to @diagnostico, notice: "" }
        format.json { render :show, status: :created, location: @diagnostico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnosticos/1 or /diagnosticos/1.json
  def update
    respond_to do |format|
      if @diagnostico.update(diagnostico_params)
        format.html { redirect_to @diagnostico, notice: "" }
        format.json { render :show, status: :ok, location: @diagnostico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosticos/1 or /diagnosticos/1.json
  def destroy
    @diagnostico.destroy!

    respond_to do |format|
      format.html { redirect_to diagnosticos_path, status: :see_other, notice: "" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnostico
      @diagnostico = Diagnostico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diagnostico_params
      params.require(:diagnostico).permit(:descripcion, :fecha, :paciente_id, :medico_id, :gravedad, :recomendaciones, :tipo_diagnostico)
    end
end
