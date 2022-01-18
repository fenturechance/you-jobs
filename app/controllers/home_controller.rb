class HomeController < ApplicationController
  def index
    @companies = Company.limit(5)
    @jobs = Job.where(open: true).limit(10)
  end
end