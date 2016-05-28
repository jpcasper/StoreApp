class CompaniesController < ApplicationController

  def index
    @companies = Supplier.all
    end
end
