WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # Left column
    [1,4,7], # Middle column
    [2,5,8], # Right column
    [0,4,8], # diagonal from top left
    [2,4,6] # diagonal from top right
  ]
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move (board, index, character)
  board[index] = character
end

def position_taken? (board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  true
end

def valid_move? (board, index)
  return true if index.between?(0, 8) && !position_taken?(board, index)
end


  