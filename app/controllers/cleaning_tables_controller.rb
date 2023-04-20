class CleaningTablesController < ApplicationController
  before_action :set_cleaning_table, only: %i[ show edit update destroy ]

  # GET /cleaning_tables or /cleaning_tables.json
  def index
    @cleaning_tables = CleaningTable.all
  end

  # GET /cleaning_tables/1 or /cleaning_tables/1.json
  def show
  end

  # GET /cleaning_tables/new
  def new
    @cleaning_table = CleaningTable.new
  end

  # GET /cleaning_tables/1/edit
  def edit
  end

  # POST /cleaning_tables or /cleaning_tables.json
  def create
    @cleaning_table = CleaningTable.new(cleaning_table_params)

    respond_to do |format|
      if @cleaning_table.save
        format.html { redirect_to cleaning_table_url(@cleaning_table), notice: "Cleaning table was successfully created." }
        format.json { render :show, status: :created, location: @cleaning_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cleaning_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleaning_tables/1 or /cleaning_tables/1.json
  def update
    respond_to do |format|
      if @cleaning_table.update(cleaning_table_params)
        format.html { redirect_to cleaning_table_url(@cleaning_table), notice: "Cleaning table was successfully updated." }
        format.json { render :show, status: :ok, location: @cleaning_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cleaning_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleaning_tables/1 or /cleaning_tables/1.json
  def destroy
    @cleaning_table.destroy

    respond_to do |format|
      format.html { redirect_to cleaning_tables_url, notice: "Cleaning table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning_table
      @cleaning_table = CleaningTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cleaning_table_params
      params.require(:cleaning_table).permit(:ordered, :complete)
    end
end
