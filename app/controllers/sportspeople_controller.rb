class SportspeopleController < ApplicationController
  before_action :set_sportsperson, only: %i[ show edit update destroy ]

  # GET /sportspeople or /sportspeople.json
  def index
    @sportspeople = Sportsperson.all
  end

  def home
  end

  # GET /sportspeople/1 or /sportspeople/1.json
  def show
  end

  # GET /sportspeople/new
  def new
    @sportsperson = Sportsperson.new
  end

  # GET /sportspeople/1/edit
  def edit
  end

  # POST /sportspeople or /sportspeople.json
  def create
    @sportsperson = Sportsperson.new(sportsperson_params)

    respond_to do |format|
      if @sportsperson.save
        format.html { redirect_to sportsperson_url(@sportsperson), notice: "Sportsperson was successfully created." }
        format.json { render :show, status: :created, location: @sportsperson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sportsperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sportspeople/1 or /sportspeople/1.json
  def update
    respond_to do |format|
      if @sportsperson.update(sportsperson_params)
        format.html { redirect_to sportsperson_url(@sportsperson), notice: "Sportsperson was successfully updated." }
        format.json { render :show, status: :ok, location: @sportsperson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sportsperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sportspeople/1 or /sportspeople/1.json
  def destroy
    @sportsperson.destroy

    respond_to do |format|
      format.html { redirect_to sportspeople_url, notice: "Sportsperson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sportsperson
      @sportsperson = Sportsperson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sportsperson_params
      params.require(:sportsperson).permit(:firstname, :lastname, :birthdate, :phone, :email, :team, :position, :image)
    end
end
