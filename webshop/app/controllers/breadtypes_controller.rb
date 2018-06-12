class BreadtypesController < ApplicationController
  before_action :set_breadtype, only: [:show, :edit, :update, :destroy]

  # GET /breadtypes
  # GET /breadtypes.json
  def index
    @breadtypes = Breadtype.all
  end

  # GET /breadtypes/1
  # GET /breadtypes/1.json
  def show
  end

  # GET /breadtypes/new
  def new
    @breadtype = Breadtype.new
  end

  # GET /breadtypes/1/edit
  def edit
  end

  # POST /breadtypes
  # POST /breadtypes.json
  def create
    @breadtype = Breadtype.new(breadtype_params)

    respond_to do |format|
      if @breadtype.save
        format.html { redirect_to @breadtype, notice: 'Breadtype was successfully created.' }
        format.json { render :show, status: :created, location: @breadtype }
      else
        format.html { render :new }
        format.json { render json: @breadtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breadtypes/1
  # PATCH/PUT /breadtypes/1.json
  def update
    respond_to do |format|
      if @breadtype.update(breadtype_params)
        format.html { redirect_to @breadtype, notice: 'Breadtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @breadtype }
      else
        format.html { render :edit }
        format.json { render json: @breadtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breadtypes/1
  # DELETE /breadtypes/1.json
  def destroy
    @breadtype.destroy
    respond_to do |format|
      format.html { redirect_to breadtypes_url, notice: 'Breadtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breadtype
      @breadtype = Breadtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breadtype_params
      params.require(:breadtype).permit(:name, :description, :image)
    end
end
