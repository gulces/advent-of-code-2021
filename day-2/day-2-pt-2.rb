input = File.read('input.txt').split("\n")

horizontal = 0
depth = 0
aim = 0

input.each do |command|
  direction = command.split[0]
  force = command.split[1].to_i
  case direction
  when 'forward'
    horizontal += force
    depth += (aim * force)
  when 'up'
    aim -= force
  when 'down'
    aim += force
  end
end

p horizontal * depth
