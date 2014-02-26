class FiscalReportsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /results
  # GET /results.json
  def index
    @fiscal_reports = FiscalReport.all
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @fiscal_report = FiscalReport.new
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @fiscal_report = FiscalReport.new(fiscal_report_params)

    respond_to do |format|
      if @fiscal_report.save
        format.html { redirect_to @fiscal_report, notice: 'Result was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fiscal_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @fiscal_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @fiscal_report.update(result_params)
        format.html { redirect_to @fiscal_report, notice: 'Result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fiscal_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @fiscal_report.destroy
    respond_to do |format|
      format.html { redirect_to fiscal_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @fiscal_report = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:fiscal_report).permit(:patient, :age, :gender)
    end
end
