class InstrucaoGrausController < AuthorizationController
  before_action :set_instrucao_grau, only: %i[ show edit update destroy ]

  # GET /instrucao_graus or /instrucao_graus.json
  def index
    @instrucao_graus = InstrucaoGrau.all
  end

  # GET /instrucao_graus/1 or /instrucao_graus/1.json
  def show
  end

  # GET /instrucao_graus/new
  def new
    @instrucao_grau = InstrucaoGrau.new
  end

  # GET /instrucao_graus/1/edit
  def edit
  end

  # POST /instrucao_graus or /instrucao_graus.json
  def create
    @instrucao_grau = InstrucaoGrau.new(instrucao_grau_params)

    respond_to do |format|
      if @instrucao_grau.save
        format.html { redirect_to instrucao_grau_url(@instrucao_grau), notice: "Instrucao grau was successfully created." }
        format.json { render :show, status: :created, location: @instrucao_grau }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instrucao_grau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instrucao_graus/1 or /instrucao_graus/1.json
  def update
    respond_to do |format|
      if @instrucao_grau.update(instrucao_grau_params)
        format.html { redirect_to instrucao_grau_url(@instrucao_grau), notice: "Instrucao grau was successfully updated." }
        format.json { render :show, status: :ok, location: @instrucao_grau }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instrucao_grau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrucao_graus/1 or /instrucao_graus/1.json
  def destroy
    @instrucao_grau.destroy

    respond_to do |format|
      format.html { redirect_to instrucao_graus_url, notice: "Instrucao grau was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrucao_grau
      @instrucao_grau = InstrucaoGrau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instrucao_grau_params
      params.require(:instrucao_grau).permit(:grau)
    end
end
