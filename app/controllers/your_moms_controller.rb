class YourMomsController < ApplicationController
  before_action :set_your_mom, only: [:show, :edit, :update, :destroy]

  # GET /your_moms
  # GET /your_moms.json
  def index
    @thing = session[:foo]
    #@your_moms = YourMom.all
  end

  # GET /your_moms/1
  # GET /your_moms/1.json
  def show
  end

  # GET /your_moms/new
  def new
    @your_mom = YourMom.new
  end

  # GET /your_moms/1/edit
  def edit
  end

  # POST /your_moms
  # POST /your_moms.json
  def create
    @your_mom = YourMom.new(your_mom_params)

    respond_to do |format|
      if @your_mom.save
        format.html { redirect_to @your_mom, notice: 'Your mom was successfully created.' }
        format.json { render :show, status: :created, location: @your_mom }
      else
        format.html { render :new }
        format.json { render json: @your_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /your_moms/1
  # PATCH/PUT /your_moms/1.json
  def update
    respond_to do |format|
      if @your_mom.update(your_mom_params)
        format.html { redirect_to @your_mom, notice: 'Your mom was successfully updated.' }
        format.json { render :show, status: :ok, location: @your_mom }
      else
        format.html { render :edit }
        format.json { render json: @your_mom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /your_moms/1
  # DELETE /your_moms/1.json
  def destroy
    @your_mom.destroy
    respond_to do |format|
      format.html { redirect_to your_moms_url, notice: 'Your mom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_your_mom
      @your_mom = YourMom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def your_mom_params
      params.fetch(:your_mom, {})
    end
end
