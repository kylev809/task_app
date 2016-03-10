class UsertasksController < ApplicationController
  before_action :set_usertask, only: [:show, :edit, :update, :destroy]

  # GET /usertasks
  # GET /usertasks.json
  def index
    @usertasks = Usertask.all
  end

  # GET /usertasks/1
  # GET /usertasks/1.json
  def show
  end

  # GET /usertasks/new
  def new
    @usertask = Usertask.new
  end

  # GET /usertasks/1/edit
  def edit
  end

  # POST /usertasks
  # POST /usertasks.json
  def create
    @usertask = Usertask.new(usertask_params)

    respond_to do |format|
      if @usertask.save
        format.html { redirect_to @usertask, notice: 'Usertask was successfully created.' }
        format.json { render :show, status: :created, location: @usertask }
      else
        format.html { render :new }
        format.json { render json: @usertask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usertasks/1
  # PATCH/PUT /usertasks/1.json
  def update
    respond_to do |format|
      if @usertask.update(usertask_params)
        format.html { redirect_to @usertask, notice: 'Usertask was successfully updated.' }
        format.json { render :show, status: :ok, location: @usertask }
      else
        format.html { render :edit }
        format.json { render json: @usertask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usertasks/1
  # DELETE /usertasks/1.json
  def destroy
    @usertask.destroy
    respond_to do |format|
      format.html { redirect_to usertasks_url, notice: 'Usertask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertask
      @usertask = Usertask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usertask_params
      params.require(:usertask).permit(:description, :due)
    end
end
