class CustomersController < ApplicationController
    before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
    def index
        if params[:ranking] == nil
            @customers = Customer.asc(:name) #rank customer by name
            elsif params[:ranking] == "id"
            @customers = Customer.asc(:customer_id)
            elsif params[:ranking] == "name"
            @customers = Customer.asc(:name)
            elsif params[:ranking] == "status"
            @customers = Customer.asc(:status)
            elsif params[:ranking] == "project"
            @customers = Customer.asc(:project)
            elsif params[:ranking] == "wechat"
            @customers = Customer.asc(:wechat)
            elsif params[:ranking] == "phone"
            @customers = Customer.asc(:us_phone)
            elsif params[:ranking] == "cn_phone"
            @customers = Customer.asc(:cn_phone)
            elsif params[:ranking] == "email"
            @customers = Customer.asc(:email)
            elsif params[:ranking] == "comments"
            @customers = Customer.asc(:comments)
        end
        end

  # GET /customers/1
  # GET /customers/1.json
  def show
      @user = Customer.find(params[:id])
      @user_project = Project.find(@user.project)
  end

  # GET /customers/new
  def new
    @projects = Project.all
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
      @projects = Project.all
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)
    @projects = Project.all
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def customer_params
    #  params[:customer]
    #end
    
    private
    def customer_params
        params.require(:customer).permit(:name, :address, :customer_id, :us_phone,:us_phone1,:us_phone2,:us_phone3,:cn_phone,:cn_phone1,:cn_phone2,:cn_phone3,   :company, :wechat, :sex, :status, :project, :name1,:name2,:wechat1,:wechat2,:wechat3, :firstAct,:comments, :recent_act,:date_of_birth,:date_of_birth1,:date_of_birth2,:date_of_birth3, :email,:email1,:email2,:email3, :work_email, :english_name,:zip,:city, :state_location,:state_location_cncontent,:state_location_employ, :birthday,:us_phone_cncontent)
    end
end
