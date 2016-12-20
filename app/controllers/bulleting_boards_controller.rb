class BulletingBoardsController < ApplicationController
  before_action :set_bulleting_board, only: [:show, :edit, :update, :destroy]

  # GET /bulleting_boards
  # GET /bulleting_boards.json
  def index
    @bulleting_boards = BulletingBoard.all
  end

  # GET /bulleting_boards/1
  # GET /bulleting_boards/1.json
  def show
  end

  # GET /bulleting_boards/new
  def new
    @bulleting_board = BulletingBoard.new
  end

  # GET /bulleting_boards/1/edit
  def edit
  end

  # POST /bulleting_boards
  # POST /bulleting_boards.json
  def create
    @bulleting_board = BulletingBoard.new(bulleting_board_params)

    respond_to do |format|
      if @bulleting_board.save
        format.html { redirect_to @bulleting_board, notice: 'Bulleting board was successfully created.' }
        format.json { render :show, status: :created, location: @bulleting_board }
      else
        format.html { render :new }
        format.json { render json: @bulleting_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulleting_boards/1
  # PATCH/PUT /bulleting_boards/1.json
  def update
    respond_to do |format|
      if @bulleting_board.update(bulleting_board_params)
        format.html { redirect_to @bulleting_board, notice: 'Bulleting board was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulleting_board }
      else
        format.html { render :edit }
        format.json { render json: @bulleting_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulleting_boards/1
  # DELETE /bulleting_boards/1.json
  def destroy
    @bulleting_board.destroy
    respond_to do |format|
      format.html { redirect_to bulleting_boards_url, notice: 'Bulleting board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulleting_board
      @bulleting_board = BulletingBoard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulleting_board_params
      params.require(:bulleting_board).permit(:name, :description, :picture)
    end
end
