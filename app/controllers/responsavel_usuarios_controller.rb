class ResponsavelUsuariosController < AuthorizationController
  before_action :set_responsavel_usuario, only: %i[ show edit update destroy ]

  # GET /responsavel_usuarios or /responsavel_usuarios.json
  def index
    @responsavel_usuarios = ResponsavelUsuario.all
  end

  # GET /responsavel_usuarios/1 or /responsavel_usuarios/1.json
  def show
  end

  # GET /responsavel_usuarios/new
  def new
    @responsavel_usuario = ResponsavelUsuario.new
  end

  # GET /responsavel_usuarios/1/edit
  def edit
  end

  # POST /responsavel_usuarios or /responsavel_usuarios.json
  def create
    @responsavel_usuario = ResponsavelUsuario.new(responsavel_usuario_params)

    respond_to do |format|
      if @responsavel_usuario.save
        format.html { redirect_to responsavel_usuario_url(@responsavel_usuario), notice: "Responsavel usuario was successfully created." }
        format.json { render :show, status: :created, location: @responsavel_usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @responsavel_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsavel_usuarios/1 or /responsavel_usuarios/1.json
  def update
    respond_to do |format|
      if @responsavel_usuario.update(responsavel_usuario_params)
        format.html { redirect_to responsavel_usuario_url(@responsavel_usuario), notice: "Responsavel usuario was successfully updated." }
        format.json { render :show, status: :ok, location: @responsavel_usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @responsavel_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsavel_usuarios/1 or /responsavel_usuarios/1.json
  def destroy
    @responsavel_usuario.destroy

    respond_to do |format|
      format.html { redirect_to responsavel_usuarios_url, notice: "Responsavel usuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsavel_usuario
      @responsavel_usuario = ResponsavelUsuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsavel_usuario_params
      params.require(:responsavel_usuario).permit(:usuario_id, :responsavel_id, :parentesco_id)
    end
end
