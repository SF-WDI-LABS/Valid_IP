
def validIP?(address)
  !!address.match(/^([0-255]{1,3}\.){3}[0-255]{1,3}$/)
end
