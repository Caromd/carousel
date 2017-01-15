class  Admin::PaintColoursController < Admin::BaseController
  before_action :set_paint_colour, only: [:show, :edit, :update, :destroy]

  # GET /paint_colours
  # GET /paint_colours.json
  def index
    @paint_colours = PaintColour.all
  end

  # GET /paint_colours/1
  # GET /paint_colours/1.json
  def show
  end

  # GET /paint_colours/new
  def new
    @paint_colour = PaintColour.new
  end

  # GET /paint_colours/1/edit
  def edit
  end

  # POST /paint_colours
  # POST /paint_colours.json
  def create
    @paint_colour = PaintColour.new(paint_colour_params)

    respond_to do |format|
      if @paint_colour.save
        format.html { redirect_to admin_paint_colours_path, notice: 'Paint colour was successfully created.' }
        format.json { render :show, status: :created, location: @paint_colour }
      else
        format.html { render :new }
        format.json { render json: @paint_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paint_colours/1
  # PATCH/PUT /paint_colours/1.json
  def update
    respond_to do |format|
      if @paint_colour.update(paint_colour_params)
        format.html { redirect_to admin_paint_colours_path, notice: 'Paint colour was successfully updated.' }
        format.json { render :show, status: :ok, location: @paint_colour }
      else
        format.html { render :edit }
        format.json { render json: @paint_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paint_colours/1
  # DELETE /paint_colours/1.json
  def destroy
    @paint_colour.destroy
    respond_to do |format|
      format.html { redirect_to admin_paint_colours_url, notice: 'Paint colour was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint_colour
      @paint_colour = PaintColour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paint_colour_params
      params.require(:paint_colour).permit(:name)
    end
end
