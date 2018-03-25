class AutomatedTestsController < ApplicationController
  before_action :set_automated_test, only: [:show, :edit, :update, :destroy]

  # GET /automated_tests
  # GET /automated_tests.json
  def index
    @automated_tests = AutomatedTest.all
  end

  # GET /automated_tests/1
  # GET /automated_tests/1.json
  def show
  end

  # GET /automated_tests/new
  def new
    @automated_test = AutomatedTest.new
  end

  # GET /automated_tests/1/edit
  def edit
  end

  # POST /automated_tests
  # POST /automated_tests.json
  def create
    @automated_test = AutomatedTest.new(automated_test_params)

    respond_to do |format|
      if @automated_test.save
        format.html { redirect_to @automated_test, notice: 'Automated test was successfully created.' }
        format.json { render :show, status: :created, location: @automated_test }
      else
        format.html { render :new }
        format.json { render json: @automated_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automated_tests/1
  # PATCH/PUT /automated_tests/1.json
  def update
    respond_to do |format|
      if @automated_test.update(automated_test_params)
        format.html { redirect_to @automated_test, notice: 'Automated test was successfully updated.' }
        format.json { render :show, status: :ok, location: @automated_test }
      else
        format.html { render :edit }
        format.json { render json: @automated_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automated_tests/1
  # DELETE /automated_tests/1.json
  def destroy
    @automated_test.destroy
    respond_to do |format|
      format.html { redirect_to automated_tests_url, notice: 'Automated test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automated_test
      @automated_test = AutomatedTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def automated_test_params
      params.require(:automated_test).permit(:title, :type, :description, :component_id)
    end
end
