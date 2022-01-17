class HomeController < ApplicationController
  def index
    @companies = Company.limit(5)
    @jobs = Job.limit(10)
  end
end