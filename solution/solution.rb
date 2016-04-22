
def validIP?(address)
  # default value of valid is true
  valid = true
  # split the address string by periods
  address_segments = address.split(".")
  # get the number of segments
  address_length = address_segments.length
  # set valid to false if the number of segments is > 6 or < 4
  valid = false if address_length != 4
  # iterate through the address segments
  address_segments.each do |num, i|
    # mark invalid if a segment is empty
    valid = false if num.empty?
    # check that address segments have only digits in them
    num.each_char do |c|
      # if we find a forbidden character, set valid to false
      valid = false if !"0123456789".include? c
    end
    # convert each item to a number
    num = num.to_i
    # check if any number is greater than 255 or less than 0
    valid = false if num > 255 || num < 0
  end
  # return if the address is valid or not as a boolean
  valid
end
