class CustomersController < ApplicationController
  before_action :set_customer, only: %i[show edit update destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new

    counter = 3

    counter.times do
      @customer.addresses.build
    end
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to(@customer, notice: "Customer was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to(@customer, notice: "Customer was successfully updated.", status: :see_other)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @customer.destroy!
    redirect_to(customers_url, notice: "Customer was successfully destroyed.", status: :see_other)
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(
      :name,
      addresses_attributes: [
        :id,
        :address_line_1,
        :address_line_2,
        :postal_town,
        :county,
        :country,
        :post_code
      ]
    )
  end
end
