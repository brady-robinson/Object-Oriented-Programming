# begin
# # put code at risk of failing here
# rescue TypeError, ZeroDivisionError
# # take action
# rescue ArgumentError
# # take a different action
# end

# rescue TypeError => e

# begin
# # code
# rescue TypeError => e
#   puts e.message
# end

# file = open(file_name, 'w')

# begin
#   # do something with a file
# rescue
#   # handle exception
# rescue
#   # handle a different exception
# ensure
#   file.close
#   # executes every time
# end



# RETRY_LIMIT = 5

# begin
#   attempts = attempts || 0
# rescue
#   attemptes += 1
#   retry if attempts < RETRY_LIMIT
# end



# raise TypeError.new("Something went wrong.")
# raise TypeError, "Something went wrong."

def validate_age(age)
  raise ValidateAgeError, "invalid age" unless (0..105).include?(age)
end

begin
  validate_age(age)
rescue ValidateAgeError => e
  # take action
end

class ValidateAgeError < StandardError; end
