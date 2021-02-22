class XyzsController < ApplicationController
  before_action :set_xyz, only: %i[ show edit update destroy ]

  # GET /xyzs or /xyzs.json
  def index
    @xyzs = Xyz.all
  end

  # GET /xyzs/1 or /xyzs/1.json
  def show
  end

  # GET /xyzs/new
  def new
    @xyz = Xyz.new
  end

  # GET /xyzs/1/edit
  def edit
  end

  # POST /xyzs or /xyzs.json
  def create
    @xyz = Xyz.new(xyz_params)

    respond_to do |format|
      if @xyz.save
        format.html { redirect_to @xyz, notice: "Xyz was successfully created." }
        format.json { render :show, status: :created, location: @xyz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xyz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xyzs/1 or /xyzs/1.json
  def update
    respond_to do |format|
      if @xyz.update(xyz_params)
        format.html { redirect_to @xyz, notice: "Xyz was successfully updated." }
        format.json { render :show, status: :ok, location: @xyz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xyz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xyzs/1 or /xyzs/1.json
  def destroy
    @xyz.destroy
    respond_to do |format|
      format.html { redirect_to xyzs_url, notice: "Xyz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xyz
      @xyz = Xyz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xyz_params
      params.require(:xyz).permit(:signature)
    end
end
