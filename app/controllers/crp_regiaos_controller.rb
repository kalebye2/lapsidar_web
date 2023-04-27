class CrpRegiaosController < AuthorizationController
  before_action :set_crp_regiao, only: %i[ show edit update destroy ]

  # GET /crp_regiaos or /crp_regiaos.json
  def index
    @crp_regiaos = CrpRegiao.all
  end

  # GET /crp_regiaos/1 or /crp_regiaos/1.json
  def show
  end

  # GET /crp_regiaos/new
  def new
    @crp_regiao = CrpRegiao.new
  end

  # GET /crp_regiaos/1/edit
  def edit
  end

  # POST /crp_regiaos or /crp_regiaos.json
  def create
    @crp_regiao = CrpRegiao.new(crp_regiao_params)

    respond_to do |format|
      if @crp_regiao.save
        format.html { redirect_to crp_regiao_url(@crp_regiao), notice: "Crp regiao was successfully created." }
        format.json { render :show, status: :created, location: @crp_regiao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crp_regiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crp_regiaos/1 or /crp_regiaos/1.json
  def update
    respond_to do |format|
      if @crp_regiao.update(crp_regiao_params)
        format.html { redirect_to crp_regiao_url(@crp_regiao), notice: "Crp regiao was successfully updated." }
        format.json { render :show, status: :ok, location: @crp_regiao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crp_regiao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crp_regiaos/1 or /crp_regiaos/1.json
  def destroy
    @crp_regiao.destroy

    respond_to do |format|
      format.html { redirect_to crp_regiaos_url, notice: "Crp regiao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crp_regiao
      @crp_regiao = CrpRegiao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crp_regiao_params
      params.require(:crp_regiao).permit(:uf_id)
    end
end
