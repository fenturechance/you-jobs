class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :show_admin, :edit, :update, :destroy]
  def index
    @companies = Company.all
  end
  def index_show
    @companies = Company.all
  end

  def show
    @jobs = Job.where("company_id = ?", params[:id])
  end

  def show_admin
    @jobs = Job.where("company_id = ?", params[:id])
  end

  def new
    @company = Company.new
    @isNew = true
  end

  def edit
    @isNew = false
  end
  def create
    @company = Company.new company_params

    respond_to do |format|
      if @company.save
        format.html { redirect_to companies_show_admin_path(@company), notice: "company was successfully created." }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @company.update company_params_edit
        format.html { redirect_to companies_show_admin_path(@company), notice: "Company was successfully updated." }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: "Company was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def set_company
    @company = Company.find params[:id]
  end
  def company_params
    params.require(:company).permit(:companyName, :companyProfile, :companyPhilosophy, :mediaReports, :salaryAndBenefits)
  end
  def company_params_edit
    params.require(:company).permit(:companyProfile, :companyPhilosophy, :mediaReports, :salaryAndBenefits)
  end
end
