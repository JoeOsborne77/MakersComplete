def make_snippet(str)
  str_arr = str.split
  str_arr.count >= 5 ? str_arr[0..4].join(" ") + "..." : str
end

# Test-drive a method with the following design:

# Design

# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.