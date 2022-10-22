def sentence_checker(text)
  text.match?(/^[A-Z]/) && text.match?(/[!.?]$/) ? true : false
end
