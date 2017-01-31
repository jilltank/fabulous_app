class MyMomsController < ApplicationController
  before_action :set_my_mom, only: [:show, :edit, :update, :destroy]

  # GET /my_moms
  # GET /my_moms.json
  def index
    session[:foo] = :ben_wont_stop_coughing
    @my_moms = nil #MyMom.all
  end

  # GET /my_moms/1
  # GET /my_moms/1.json
  def show
  end

  # GET /my_moms/new
  def new
    @my_mom = MyMom.new
  end

  # GET /my_moms/1/edit
  def edit
  end

  # POST /my_moms
  # POST /my_moms.json
  def create
    @my_mom = MyMom.new(my_mom_params)

    respond_to do |format|
      if @my_mom.save
        format.html { redirect_to @my_mom, notice: 'My mom was successfully created.' }
        format.json { render :show, status: :created, location: @my_mom }
      else
        format.html { render :new }
        format.json { render json: @my_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_moms/1
  # PATCH/PUT /my_moms/1.json
  def update
    respond_to do |format|
      if @my_mom.update(my_mom_params)
        format.html { redirect_to @my_mom, notice: 'My mom was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_mom }
      else
        format.html { render :edit }
        format.json { render json: @my_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_moms/1
  # DELETE /my_moms/1.json
  def destroy
    @my_mom.destroy
    respond_to do |format|
      format.html { redirect_to my_moms_url, notice: 'My mom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_mom
      @my_mom = MyMom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_mom_params
      params.fetch(:my_mom, {})
    end
end
