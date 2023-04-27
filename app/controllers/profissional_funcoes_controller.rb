class ProfissionalFuncoesController < ApplicationController
  before_action :set_profissional_funco, only: %i[ show edit update destroy ]

  # GET /profissional_funcoes or /profissional_funcoes.json
  def index
    @profissional_funcoes = ProfissionalFuncoes.all
  end

  # GET /profissional_funcoes/1 or /profissional_funcoes/1.json
  def show
  end

  # GET /profissional_funcoes/new
  def new
    @profissional_funco = ProfissionalFuncoes.new
  end

  # GET /profissional_funcoes/1/edit
  def edit
  end

  # POST /profissional_funcoes or /profissional_funcoes.json
  def create
    @profissional_funco = ProfissionalFuncoes.new(profissional_funco_params)

    respond_to do |format|
      if @profissional_funco.save
        format.html { redirect_to profissional_funco_url(@profissional_funco), notice: "Profissional funcoes was successfully created." }
        format.json { render :show, status: :created, location: @profissional_funco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profissional_funco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissional_funcoes/1 or /profissional_funcoes/1.json
  def update
    respond_to do |format|
      if @profissional_funco.update(profissional_funco_params)
        format.html { redirect_to profissional_funco_url(@profissional_funco), notice: "Profissional funcoes was successfully updated." }
        format.json { render :show, status: :ok, location: @profissional_funco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profissional_funco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissional_funcoes/1 or /profissional_funcoes/1.json
  def destroy
    @profissional_funco.destroy

    respond_to do |format|
      format.html { redirect_to profissional_funcoes_index_url, notice: "Profissional funcoes was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissional_funco
      @profissional_funco = ProfissionalFuncoes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profissional_funco_params
      params.require(:profissional_funco).permit(:funcao)
    end
end
