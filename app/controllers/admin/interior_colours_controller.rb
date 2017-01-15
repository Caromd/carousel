class  Admin::InteriorColoursController < Admin::BaseController
  before_action :set_interior_colour, only: [:show, :edit, :update, :destroy]

  # GET /interior_colours
  # GET /interior_colours.json
  def index
    @interior_colours = InteriorColour.all
  end

  # GET /interior_colours/1
  # GET /interior_colours/1.json
  def show
  end

  # GET /interior_colours/new
  def new
    @interior_colour = InteriorColour.new
  end

  # GET /interior_colours/1/edit
  def edit
  end

  # POST /interior_colours
  # POST /interior_colours.json
  def create
    @interior_colour = InteriorColour.new(interior_colour_params)

    respond_to do |format|
      if @interior_colour.save
        format.html { redirect_to admin_interior_colours_path, notice: 'Interior colour was successfully created.' }
        format.json { render :show, status: :created, location: @interior_colour }
      else
        format.html { render :new }
        format.json { render json: @interior_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interior_colours/1
  # PATCH/PUT /interior_colours/1.json
  def update
    respond_to do |format|
      if @interior_colour.update(interior_colour_params)
        format.html { redirect_to admin_interior_colours_path, notice: 'Interior colour was successfully updated.' }
        format.json { render :show, status: :ok, location: @interior_colour }
      else
        format.html { render :edit }
        format.json { render json: @interior_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interior_colours/1
  # DELETE /interior_colours/1.json
  def destroy
    @interior_colour.destroy
    respond_to do |format|
      format.html { redirect_to admin_interior_colours_url, notice: 'Interior colour was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interior_colour
      @interior_colour = InteriorColour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interior_colour_params
      params.require(:interior_colour).permit(:name)
    end
end
