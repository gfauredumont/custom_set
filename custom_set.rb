class CustomSet
  def initialize(param)
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
    @param.each do |p|
      return false if second_set.member?(p)
    end
    true
  end

  def empty?
    @param.empty?
  end
end
