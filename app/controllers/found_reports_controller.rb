class FoundReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_found_report, only: %i[show edit update destroy]
  load_and_authorize_resource

  # GET /found_reports or /found_reports.json
  def index
    @q = FoundReport.ransack(params[:q])
    @found_reports = @q.result(distinct: true)
    if params[:category].present?
      @found_reports = @found_reports.where(category: params[:category])
    end
    if @found_reports.empty?
      flash.now[:notice] = "No posts found."
    end
  end

  # GET /found_reports/1 or /found_reports/1.json
  def show
  end

  # GET /found_reports/new
  def new
    @found_report = FoundReport.new
  end

  # GET /found_reports/1/edit
  def edit
  end

  # POST /found_reports or /found_reports.json
  def create
    @found_report = FoundReport.new(found_report_params)

    respond_to do |format|
      if @found_report.save
        format.html { redirect_to found_report_url(@found_report), notice: "Found report was successfully created." }
        format.json { render :show, status: :created, location: @found_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @found_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /found_reports/1 or /found_reports/1.json
  def update
    respond_to do |format|
      if @found_report.update(found_report_params)
        format.html { redirect_to found_report_url(@found_report), notice: "Found report was successfully updated." }
        format.json { render :show, status: :ok, location: @found_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @found_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /found_reports/1 or /found_reports/1.json
  def destroy
    @found_report.destroy

    respond_to do |format|
      format.html { redirect_to found_reports_url, notice: "Found report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_found_report
    @found_report = FoundReport.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def found_report_params
    params.require(:found_report).permit(:item_name, :location_found, :date, :description, :image, :status, :category, :phone_number, :bounty)
  end
  def call_contact
    @found_report = FoundReport.find(params[:id])
  end
end