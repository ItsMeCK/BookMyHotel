class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  # GET /customers or /customers.json
  def index
    @customers = Customer.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    #@customers = Customer.order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  # GET /customers/1 or /customers/1.json
  def show
    @bookings = @customer.bookings
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    @booking = @customer.bookings.build
    @customer_options = Customer.all.map { |u| [ u.name, u.id ] }
      @room_options = Room.all.map { |r| [ r.room_number, r.id ] }
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :email, :mobile, :birthdate, :address, :avatar, bookings_attributes: [:signature, :customer_id, :room_id, :check_in, :check_out, :number_of_people, :status, :price, :details,images: []])
    end
end
