input = File.read('input.txt').split("\n").map(&:to_i)

def compare(measures)
  counter = 0
  measures.each_with_index do |m, i|
    counter += 1 if m > measures[i - 1]
  end
  counter
end

# part 1
p compare(input)

# part 2
sums = input.each_cons(3).map(&:sum)
p compare(sums)
