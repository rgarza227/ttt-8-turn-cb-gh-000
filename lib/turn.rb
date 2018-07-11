
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?
      false
    else
      true
    end
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  else #basically anything else including X or O
    true
  end
end
