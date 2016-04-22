
def validIP?(address)
  address_segments = address.split(".")
  # if there aren't 4 segments, return false right away.
  return false if address_segments.length != 4

  # iterate through the 4 address segments
  address_segments.each do |num, i|
    # if the string is empty, return false right away.
    return false if num.empty?

    # check that address segments have only digits in them
    num.each_char do |c|
      # if we find a forbidden character, return false right away
      return false unless "0123456789".include? c
    end

    # convert each item to a number
    num = num.to_i
    # check if any number is greater than 255 or less than 0
    return false if num > 255 || num < 0
  end

  # must be valid! return true.
  true
end
