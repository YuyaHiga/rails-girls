class BulletinBoards1sController < ApplicationController
  before_action :set_bulletin_boards1, only: [:show, :edit, :update, :destroy]

  # GET /bulletin_boards1s
  # GET /bulletin_boards1s.json
  def index
    @bulletin_boards1s = BulletinBoards1.all
  end

  # GET /bulletin_boards1s/1
  # GET /bulletin_boards1s/1.json
  def show
  end

  # GET /bulletin_boards1s/new
  def new
    @bulletin_boards1 = BulletinBoards1.new
  end

  # GET /bulletin_boards1s/1/edit
  def edit
  end

  # POST /bulletin_boards1s
  # POST /bulletin_boards1s.json
  def create
    @bulletin_boards1 = BulletinBoards1.new(bulletin_boards1_params)

    respond_to do |format|
      if @bulletin_boards1.save
        format.html { redirect_to @bulletin_boards1, notice: 'Bulletin boards1 was successfully created.' }
        format.json { render :show, status: :created, location: @bulletin_boards1 }
      else
        format.html { render :new }
        format.json { render json: @bulletin_boards1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulletin_boards1s/1
  # PATCH/PUT /bulletin_boards1s/1.json
  def update
    respond_to do |format|
      if @bulletin_boards1.update(bulletin_boards1_params)
        format.html { redirect_to @bulletin_boards1, notice: 'Bulletin boards1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulletin_boards1 }
      else
        format.html { render :edit }
        format.json { render json: @bulletin_boards1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletin_boards1s/1
  # DELETE /bulletin_boards1s/1.json
  def destroy
    @bulletin_boards1.destroy
    respond_to do |format|
      format.html { redirect_to bulletin_boards1s_url, notice: 'Bulletin boards1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletin_boards1
      @bulletin_boards1 = BulletinBoards1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulletin_boards1_params
      params.require(:bulletin_boards1).permit(:name, :description, :picture)
    end
end
