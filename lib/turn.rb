def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.chomp.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(index)
end

def position_taken?(board, position)
  ['X', 'O'].include?(board[position])
end
