
def validIP?(address)
  address_segments = address.split(".")
  # if there aren't 4 segments, return false right away.
  return false if address_segments.length != 4

  # iterate through the 4 address segments
  address_segments.each do |segment, i|
    num = segment.to_i
    # if the string contains non-numbers, return false right away.
    return false if num.to_s != segment
    # check if any number is greater than 255 or less than 0
    return false if num > 255 || num < 0
  end

  # must be valid! return true.
  true
end
