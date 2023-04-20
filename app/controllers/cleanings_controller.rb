class CleaningsController < ApplicationController
  before_action :set_cleaning, only: %i[ show edit update destroy ]

  # GET /cleanings or /cleanings.json
  def index
    @cleanings = Cleaning.all
  end

  # GET /cleanings/1 or /cleanings/1.json
  def show
  end

  # GET /cleanings/new
  def new
    @cleaning = Cleaning.new
  end

  # GET /cleanings/1/edit
  def edit
  end

  # POST /cleanings or /cleanings.json
  def create
    @cleaning = Cleaning.new(cleaning_params)

    respond_to do |format|
      if @cleaning.save
        format.html { redirect_to cleaning_url(@cleaning), notice: "Cleaning was successfully created." }
        format.json { render :show, status: :created, location: @cleaning }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleanings/1 or /cleanings/1.json
  def update
    respond_to do |format|
      if @cleaning.update(cleaning_params)
        format.html { redirect_to cleaning_url(@cleaning), notice: "Cleaning was successfully updated." }
        format.json { render :show, status: :ok, location: @cleaning }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleanings/1 or /cleanings/1.json
  def destroy
    @cleaning.destroy

    respond_to do |format|
      format.html { redirect_to cleanings_url, notice: "Cleaning was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning
      @cleaning = Cleaning.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cleaning_params
      params.require(:cleaning).permit(:hour)
    end
end
