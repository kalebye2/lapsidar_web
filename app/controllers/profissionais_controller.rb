class ProfissionaisController < ApplicationController
  before_action :set_profissionai, only: %i[ show edit update destroy ]

  # GET /profissionais or /profissionais.json
  def index
    @profissionais = Profissionai.all
  end

  # GET /profissionais/1 or /profissionais/1.json
  def show
  end

  # GET /profissionais/new
  def new
    @profissionai = Profissionai.new
  end

  # GET /profissionais/1/edit
  def edit
  end

  # POST /profissionais or /profissionais.json
  def create
    @profissionai = Profissionai.new(profissionai_params)

    respond_to do |format|
      if @profissionai.save
        format.html { redirect_to profissionai_url(@profissionai), notice: "Profissionai was successfully created." }
        format.json { render :show, status: :created, location: @profissionai }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profissionai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profissionais/1 or /profissionais/1.json
  def update
    respond_to do |format|
      if @profissionai.update(profissionai_params)
        format.html { redirect_to profissionai_url(@profissionai), notice: "Profissionai was successfully updated." }
        format.json { render :show, status: :ok, location: @profissionai }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profissionai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profissionais/1 or /profissionais/1.json
  def destroy
    @profissionai.destroy

    respond_to do |format|
      format.html { redirect_to profissionais_url, notice: "Profissionai was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profissionai
      @profissionai = Profissionai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profissionai_params
      params.require(:profissionai).permit(:nome, :sobrenome, :feminino, :cpf, :civil_estado_id, :instrucao_grau_id, :data_nascimento, :funcao_id, :municipio_id, :endereco_cep, :endereco_logradouro, :endereco_numero, :endereco_complemento, :fone_cod_pais, :fone_cod_area, :fone_num, :email, :bio, :salario)
    end
end
