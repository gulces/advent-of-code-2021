input = File.read('input.txt').split("\n")

i = 0
gamma = ""
epsilon = ""

while i < 12
  max_frequency = []
  min_frequency = []
  input.each do |binary|
      max_frequency << binary[i]
      min_frequency << binary[i]
    end
    gamma << max_frequency.max_by{ |n| max_frequency.count(n)}
    epsilon << min_frequency.min_by{ |n| min_frequency.count(n)}
    i += 1
end

p gamma.to_i(2) * epsilon.to_i(2)
