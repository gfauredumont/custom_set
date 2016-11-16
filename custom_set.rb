class CustomSet
  def initialize(param)
    @param = param
  end

  def member?(value)
    @param.include?(value)
  end

  def subset?(second_set)
    @param.each do |item|
      return false if !second_set.member?(item)
    end
    true
  end

  def disjoint?(second_set)
    true
  end

  def empty?
    @param.empty?
  end
end
