class CurrentAffairsController < ApplicationController
  before_action :set_current_affair, only: [:show, :edit, :update, :destroy]

  # GET /current_affairs
  # GET /current_affairs.json
  def index
    @current_affairs = CurrentAffair.all
  end

  # GET /current_affairs/1
  # GET /current_affairs/1.json
  def show
  end

  # GET /current_affairs/new
  def new
    @current_affair = CurrentAffair.new
  end

  # GET /current_affairs/1/edit
  def edit
  end

  # POST /current_affairs
  # POST /current_affairs.json
  def create
    @current_affair = CurrentAffair.new(current_affair_params)

    respond_to do |format|
      if @current_affair.save
        format.html { redirect_to @current_affair, notice: 'Current affair was successfully created.' }
        format.json { render :show, status: :created, location: @current_affair }
      else
        format.html { render :new }
        format.json { render json: @current_affair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_affairs/1
  # PATCH/PUT /current_affairs/1.json
  def update
    respond_to do |format|
      if @current_affair.update(current_affair_params)
        format.html { redirect_to @current_affair, notice: 'Current affair was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_affair }
      else
        format.html { render :edit }
        format.json { render json: @current_affair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_affairs/1
  # DELETE /current_affairs/1.json
  def destroy
    @current_affair.destroy
    respond_to do |format|
      format.html { redirect_to current_affairs_url, notice: 'Current affair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_affair
      @current_affair = CurrentAffair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_affair_params
      params.require(:current_affair).permit(:name, :post_on)
    end
end
