# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.empty?
  tmp_value = nil
  tmp_key = nil
  name_hash.each do |key, value|
    if !tmp_value
      tmp_value = value
    end
    if !tmp_key
      tmp_key = key
    end
    if value < tmp_value
      tmp_key = key
      tmp_value = value
    end
  end
  tmp_key
end
