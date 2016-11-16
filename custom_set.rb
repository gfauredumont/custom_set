class CustomSet
  def initialize(param)
    @param = param
  end

  def member?(value)
    @param.include?(value)
  end

  def empty?
    @param.empty?
  end
end
