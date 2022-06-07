# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

public def number_of_splits
  split.size
end

public def number_of_scans
  scan(/\./).size
end



def word_count(beginning, middle, conclusion)
  beginning.number_of_splits +
  middle.number_of_splits +
  conclusion.number_of_splits
end

def letter_count(beginning, middle, conclusion)
  beginning.size + middle.size + conclusion.size
end

def period_count(beginning, middle, conclusion)
  beginning.number_of_scans +
  middle.number_of_scans +
  conclusion.number_of_scans
end
