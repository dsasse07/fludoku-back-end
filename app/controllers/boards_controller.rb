class BoardsController < ApplicationController

  def create
    new_board = Board.create( board_params )
    render json: new_board
  end

  def update
    updated_board = Board.find( params[ :id ] )
    updated_board.update( board_params )
    render json: updated_board
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end

  private

  def board_params
    # params.permit( :board_name, :starting_board, :solved_board, :board_in_progress )
    params.require(:board).permit!
  end

end
 