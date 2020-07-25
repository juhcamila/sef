class TiposProdutosController < ApplicationController
  before_action :set_tipos_produto, only: [:edit, :update, :destroy]

  # GET /tipos_produtos
  # GET /tipos_produtos.json
  def index
    @tipos_produtos = TiposProduto.all
  end

  # GET /tipos_produtos/new
  def new
    @tipos_produto = TiposProduto.new
  end

  # GET /tipos_produtos/1/edit
  def edit
  end

  # POST /tipos_produtos
  # POST /tipos_produtos.json
  def create
    @tipos_produto = TiposProduto.new(tipos_produto_params)

    respond_to do |format|
      if @tipos_produto.save
        format.html { redirect_to tipos_produtos_path, notice: 'Tipo de produto criado com sucesso' }
        format.json { render :index, status: :created, location: @tipos_produto }
      else
        format.html { render :new }
        format.json { render json: @tipos_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_produtos/1
  # PATCH/PUT /tipos_produtos/1.json
  def update
    respond_to do |format|
      if @tipos_produto.update(tipos_produto_params)
        format.html { redirect_to tipos_produtos_path, notice: 'Tipo de produto alterado com sucesso' }
        format.json { render :index, status: :ok, location: @tipos_produto }
      else
        format.html { render :edit }
        format.json { render json: @tipos_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_produtos/1
  # DELETE /tipos_produtos/1.json
  def destroy
    @tipos_produto.destroy
    respond_to do |format|
      format.html { redirect_to tipos_produtos_url, notice: 'Tipos produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_produto
      @tipos_produto = TiposProduto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipos_produto_params
      params.require(:tipos_produto).permit(:descricao)
    end
end
