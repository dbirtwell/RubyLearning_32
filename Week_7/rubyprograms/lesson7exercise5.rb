# lesson7exercise5.rb
# David Birtwell
=begin

  Week 7 Exercise 5. 
  
  Let's say you want to run some Ruby code (such as a call to a shell command)
  repeatedly at a certain interval (for example, once every five seconds for 
  one minute). 
  
  Write a method for this. Do not use Thread class for now. Hint: yield and sleep 
  methods may be required. 
=end

SECONDS_TO_RUN = 60

def sleep_for_seconds seconds_to_sleep=5
    yield
    sleep seconds_to_sleep
end

start_time = Time.new
puts "Starting at: #{start_time}"
until Time.new > start_time + SECONDS_TO_RUN
  # sleep_for_seconds {puts 'In the block'}
  sleep_for_seconds(1) {puts 'In the block'}  
end
puts "Ended at: #{Time.new}"