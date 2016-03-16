class TestjsonsController < ApplicationController
  before_action :set_testjson, only: [:show, :edit, :update, :destroy]
  layout 'onsite'

  # GET /testjsons
  # GET /testjsons.json
  def index
    @testjsons = Testjson.all
  end

  # GET /testjsons/1
  # GET /testjsons/1.json
  def show
  end

  # GET /testjsons/new
  def new
    @testjson = Testjson.new
  end

  # GET /testjsons/1/edit
  def edit
  end

  # POST /testjsons
  # POST /testjsons.json
  def create
    @testjson = Testjson.new(testjson_params)

    respond_to do |format|
      if @testjson.save
        format.html { redirect_to @testjson, notice: 'Testjson was successfully created.' }
        format.json { render :show, status: :created, location: @testjson }
      else
        format.html { render :new }
        format.json { render json: @testjson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testjsons/1
  # PATCH/PUT /testjsons/1.json
  def update
    respond_to do |format|
      if @testjson.update(testjson_params)
        format.html { redirect_to @testjson, notice: 'Testjson was successfully updated.' }
        format.json { render :show, status: :ok, location: @testjson }
      else
        format.html { render :edit }
        format.json { render json: @testjson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testjsons/1
  # DELETE /testjsons/1.json
  def destroy
    @testjson.destroy
    respond_to do |format|
      format.html { redirect_to testjsons_url, notice: 'Testjson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testjson
      @testjson = Testjson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testjson_params
      params.require(:testjson).permit(:title, :start, :end, :requestor)
    end
end
