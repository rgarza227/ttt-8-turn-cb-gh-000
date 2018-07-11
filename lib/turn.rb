
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

def move(board, index, token = "X")
   board[index] = token
end

def turn(board)

  puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if !input.between?(1,9)
      puts "Invalid Entry. Try Again."
    end
  end
  index = input_to_index(input)
  position_taken?(board, index)
  move(board, index, "X")
  display_board(board)
end

def input_to_index (input)
  index = input.to_i - 1

end
