input = File.read('input.txt').split("\n")

horizontal = 0
depth = 0

input.each do |command|
  case command.split[0]
  when "forward"
    horizontal += command.split[1].to_i
  when "up"
    depth -= command.split[1].to_i
  when "down"
    depth += command.split[1].to_i
  end
end

p multiply = horizontal * depth
