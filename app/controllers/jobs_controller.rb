class JobsController < ApplicationController
  before_action :set_job, :set_company, only: [:show, :show_admin, :edit, :update, :destroy]
  def index
    @companies = Company.all
  end

  def show
  end

  def new
    set_company
    @isNew = true
  end

  def edit
    @isNew = false
  end
  def create
    @job = Job.new job_params
    set_company
    respond_to do |format|
      if @job.save
        format.html { redirect_to companies_show_admin_path(@company), notice: "job was successfully created." }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @job.update job_params_edit
        format.html { redirect_to companies_show_admin_path(@company), notice: "job was successfully updated." }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: "job was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def set_job
    @job = Job.find params[:id]
  end
  def set_company
    @company = Company.find params[:company_id]
  end
  def job_params
    params.permit(:jobTitle, :workContent, :conditionRequirements, :companyBenefits, :salaryRange, :open, :company_id)
  end
  def job_params_edit
    params.require(:job).permit(:jobTitle, :workContent, :conditionRequirements, :companyBenefits, :salaryRange, :open, :company_id)
  end
end
