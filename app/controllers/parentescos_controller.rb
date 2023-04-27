class ParentescosController < AuthorizationController
  before_action :set_parentesco, only: %i[ show edit update destroy ]

  # GET /parentescos or /parentescos.json
  def index
    @parentescos = Parentesco.all
  end

  # GET /parentescos/1 or /parentescos/1.json
  def show
  end

  # GET /parentescos/new
  def new
    @parentesco = Parentesco.new
  end

  # GET /parentescos/1/edit
  def edit
  end

  # POST /parentescos or /parentescos.json
  def create
    @parentesco = Parentesco.new(parentesco_params)

    respond_to do |format|
      if @parentesco.save
        format.html { redirect_to parentesco_url(@parentesco), notice: "Parentesco was successfully created." }
        format.json { render :show, status: :created, location: @parentesco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parentesco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parentescos/1 or /parentescos/1.json
  def update
    respond_to do |format|
      if @parentesco.update(parentesco_params)
        format.html { redirect_to parentesco_url(@parentesco), notice: "Parentesco was successfully updated." }
        format.json { render :show, status: :ok, location: @parentesco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parentesco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parentescos/1 or /parentescos/1.json
  def destroy
    @parentesco.destroy

    respond_to do |format|
      format.html { redirect_to parentescos_url, notice: "Parentesco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parentesco
      @parentesco = Parentesco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parentesco_params
      params.require(:parentesco).permit(:parentesco)
    end
end
