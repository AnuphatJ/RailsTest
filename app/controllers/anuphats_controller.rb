class AnuphatsController < ApplicationController
  before_action :set_anuphat, only: [:show, :edit, :update, :destroy]

  # GET /anuphats
  # GET /anuphats.json
  def index
    @anuphats = Anuphat.all
  end

  # GET /anuphats/1
  # GET /anuphats/1.json
  def show
  end

  # GET /anuphats/new
  def new
    @anuphat = Anuphat.new
  end

  # GET /anuphats/1/edit
  def edit
  end

  # POST /anuphats
  # POST /anuphats.json
  def create
    @anuphat = Anuphat.new(anuphat_params)

    respond_to do |format|
      if @anuphat.save
        format.html { redirect_to @anuphat, notice: 'Anuphat was successfully created.' }
        format.json { render :show, status: :created, location: @anuphat }
      else
        format.html { render :new }
        format.json { render json: @anuphat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anuphats/1
  # PATCH/PUT /anuphats/1.json
  def update
    respond_to do |format|
      if @anuphat.update(anuphat_params)
        format.html { redirect_to @anuphat, notice: 'Anuphat was successfully updated.' }
        format.json { render :show, status: :ok, location: @anuphat }
      else
        format.html { render :edit }
        format.json { render json: @anuphat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anuphats/1
  # DELETE /anuphats/1.json
  def destroy
    @anuphat.destroy
    respond_to do |format|
      format.html { redirect_to anuphats_url, notice: 'Anuphat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anuphat
      @anuphat = Anuphat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anuphat_params
      params.require(:anuphat).permit(:login)
    end
end
