class ActivitiesTablesController < ApplicationController
  before_action :set_activities_table, only: %i[ show edit update destroy ]

  # GET /activities_tables or /activities_tables.json
  def index
    @activities_tables = ActivitiesTable.all
  end

  # GET /activities_tables/1 or /activities_tables/1.json
  def show
  end

  # GET /activities_tables/new
  def new
    @activities_table = ActivitiesTable.new
  end

  # GET /activities_tables/1/edit
  def edit
  end

  # POST /activities_tables or /activities_tables.json
  def create
    @activities_table = ActivitiesTable.new(activities_table_params)

    respond_to do |format|
      if @activities_table.save
        format.html { redirect_to activities_table_url(@activities_table), notice: "Activities table was successfully created." }
        format.json { render :show, status: :created, location: @activities_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @activities_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities_tables/1 or /activities_tables/1.json
  def update
    respond_to do |format|
      if @activities_table.update(activities_table_params)
        format.html { redirect_to activities_table_url(@activities_table), notice: "Activities table was successfully updated." }
        format.json { render :show, status: :ok, location: @activities_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @activities_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities_tables/1 or /activities_tables/1.json
  def destroy
    @activities_table.destroy

    respond_to do |format|
      format.html { redirect_to activities_tables_url, notice: "Activities table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activities_table
      @activities_table = ActivitiesTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activities_table_params
      params.require(:activities_table).permit(:ordered, :complete)
    end
end
