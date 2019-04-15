def list_horses(horses)
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
end

def run_race
  puts "The horses are racing..."
  lap = 0
  3.times do
    lap += 1
    puts "Lap #{lap}: New lineup:"
    list_horses(HORSES.shuffle)
    sleep(2)
  end
  HORSES.sample
end
