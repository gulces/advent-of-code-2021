input = File.read('input.txt').split("\n")

horizontal = 0
depth = 0

input.each do |command|
  direction = command.split[0]
  force = command.split[1].to_i
  case direction
  when 'forward'
    horizontal += force
  when 'up'
    depth -= force
  when 'down'
    depth += force
  end
end

p horizontal * depth
