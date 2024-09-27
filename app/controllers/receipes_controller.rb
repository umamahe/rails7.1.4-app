class ReceipesController < ApplicationController
  before_action :set_receipe, only: %i[ show edit update destroy ]

  # GET /receipes or /receipes.json
  def index
    @receipes = Receipe.all
  end

  # GET /receipes/1 or /receipes/1.json
  def show
  end

  # GET /receipes/new
  def new
    @receipe = Receipe.new
  end

  # GET /receipes/1/edit
  def edit
  end

  # POST /receipes or /receipes.json
  def create
    @receipe = Receipe.new(receipe_params)

    respond_to do |format|
      if @receipe.save
        format.html { redirect_to @receipe, notice: "Receipe was successfully created." }
        format.json { render :show, status: :created, location: @receipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipes/1 or /receipes/1.json
  def update
    respond_to do |format|
      if @receipe.update(receipe_params)
        format.html { redirect_to @receipe, notice: "Receipe was successfully updated." }
        format.json { render :show, status: :ok, location: @receipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipes/1 or /receipes/1.json
  def destroy
    @receipe.destroy!

    respond_to do |format|
      format.html { redirect_to receipes_path, status: :see_other, notice: "Receipe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe
      @receipe = Receipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receipe_params
      params.require(:receipe).permit(:title, :body)
    end
end
