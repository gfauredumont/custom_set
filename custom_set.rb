class CustomSet
  def initialize(param = [])
    @param = param
  end

  def member?(value)
    @param.include?(value)
  end

  def subset?(second_set)
    return true if empty? && second_set.empty?
    @param.all? { |p| second_set.member?(p) }
  end

  def disjoint?(second_set)
    return true if empty? || second_set.empty?
    !@param.any? { |p| second_set.member?(p) }
  end

  def ==(second_set)
    subset?(second_set) && second_set.subset?(self)
  end

  def add(value)
    @param << value
    self
  end

  def intersection(set)
    new_param = @param.select { |p| set.member?(p) }
    CustomSet.new(new_param)
  end

  def empty?
    @param.empty?
  end
end
