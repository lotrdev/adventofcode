def read_input
  file = File.open('input.txt', 'rb')
  input = file.read
  file.close
  
  input
end