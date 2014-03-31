class WstudentsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_wstudent, only: [:show, :edit, :update, :destroy]

  # GET /wstudents
  # GET /wstudents.json
  def index
      @wstudents = Wstudent.desc(:class_year)
  end

  # GET /wstudents/1
  # GET /wstudents/1.json
  def show
      @user = Wstudent.find(params[:id])
  end

  # GET /wstudents/new
  def new
    @wstudent = Wstudent.new
  end

  # GET /wstudents/1/edit
  def edit
  end

  # POST /wstudents
  # POST /wstudents.json
  def create
    @wstudent = Wstudent.new(wstudent_params)

    respond_to do |format|
      if @wstudent.save
        format.html { redirect_to @wstudent, notice: 'Wstudent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wstudent }
      else
        format.html { render action: 'new' }
        format.json { render json: @wstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wstudents/1
  # PATCH/PUT /wstudents/1.json
  def update
    respond_to do |format|
      if @wstudent.update(wstudent_params)
        format.html { redirect_to @wstudent, notice: 'Wstudent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wstudents/1
  # DELETE /wstudents/1.json
  def destroy
    @wstudent.destroy
    respond_to do |format|
      format.html { redirect_to wstudents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wstudent
      @wstudent = Wstudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wstudent_params
        params.require(:wstudent).permit(:name,:dob,:sex,:class_year, :email,:wechat,:us_phone,:cn_phone,:address,:student_id,:english_name,:city,:zip,:work_email)
    end
end
