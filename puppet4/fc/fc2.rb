# http://puppet-on-the-edge.blogspot.se
Puppet::Functions.create_function(:min) do
  dispatch :min do
    param 'Numeric', :a
    param 'Numeric', :b
  end

  dispatch :min_s do
    param 'String', :s1
    param 'String', :s2
  end

  def min(x,y)
    x <= y ? x : y
  end

  def min_s(x,y)
    cmp = (x.downcase <=> y.downcase)
    cmp <= 0 ? x : y
  end
end
