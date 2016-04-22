# a common solution we saw in class, close!
def valid_ish_IP?(address)
  !!address.match(/^([0-255]{1,3}\.){3}[0-255]{1,3}$/)
end


# more accurate:
def validIP?(address)
  !!address.match(/^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/) 
end
