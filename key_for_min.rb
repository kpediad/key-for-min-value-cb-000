# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.is_empty?
  name_hash.each do |key, value|
    tmp_value = value if !tmp_value
    tmp_key = key if !tmp_key
    if value < tmp_value
      tmp_key = key
      tmp_value = value
    end
  end
  tmp_key
end
