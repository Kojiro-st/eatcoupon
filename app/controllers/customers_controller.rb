class CustomersController < ApplicationController

  def index
  end

  def new
    @customer = Customer.new
    @customer.users << current_user
  end

  def create
  end

end
