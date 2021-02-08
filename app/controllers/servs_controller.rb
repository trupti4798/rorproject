class ServsController < ApplicationController
  before_action :set_serv, only: [:show, :edit, :update, :destroy]

  # GET /servs
  # GET /servs.json
  def index
    @servs = Serv.all
  end

  # GET /servs/1
  # GET /servs/1.json
  def show
  end

  # GET /servs/new
  def new
    @serv = Serv.new
  end

  # GET /servs/1/edit
  def edit
  end

  # POST /servs
  # POST /servs.json
  def create
    @serv = Serv.new(serv_params)

    respond_to do |format|
      if @serv.save
        format.html { redirect_to @serv, notice: 'Serv was successfully created.' }
        format.json { render :show, status: :created, location: @serv }
      else
        format.html { render :new }
        format.json { render json: @serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servs/1
  # PATCH/PUT /servs/1.json
  def update
    respond_to do |format|
      if @serv.update(serv_params)
        format.html { redirect_to @serv, notice: 'Serv was successfully updated.' }
        format.json { render :show, status: :ok, location: @serv }
      else
        format.html { render :edit }
        format.json { render json: @serv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servs/1
  # DELETE /servs/1.json
  def destroy
    @serv.destroy
    respond_to do |format|
      format.html { redirect_to servs_url, notice: 'Serv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serv
      @serv = Serv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serv_params
      params.require(:serv).permit(:name, :info, :image)
    end
end
