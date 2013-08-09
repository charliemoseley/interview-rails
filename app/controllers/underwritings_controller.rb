class UnderwritingsController < ApplicationController
  before_action :set_underwriting, only: [:show, :edit, :update, :destroy]

  # GET /underwritings
  # GET /underwritings.json
  def index
    @underwritings = Underwriting.includes(:shop).all
  end

  # GET /underwritings/1
  # GET /underwritings/1.json
  def show
  end

  # GET /underwritings/new
  def new
    @underwriting = Underwriting.new
  end

  # GET /underwritings/1/edit
  def edit
  end

  # POST /underwritings
  # POST /underwritings.json
  def create
    @underwriting = Underwriting.new(underwriting_params)

    respond_to do |format|
      if @underwriting.save
        format.html { redirect_to @underwriting, notice: 'Underwriting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @underwriting }
      else
        format.html { render action: 'new' }
        format.json { render json: @underwriting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /underwritings/1
  # PATCH/PUT /underwritings/1.json
  def update
    respond_to do |format|
      if @underwriting.update(underwriting_params)
        format.html { redirect_to @underwriting, notice: 'Underwriting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @underwriting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /underwritings/1
  # DELETE /underwritings/1.json
  def destroy
    @underwriting.destroy
    respond_to do |format|
      format.html { redirect_to underwritings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_underwriting
      @underwriting = Underwriting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def underwriting_params
      params.require(:underwriting).permit(:shop_id, :status)
    end
end
