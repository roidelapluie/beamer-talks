# http://puppet-on-the-edge.blogspot.se
Puppet::Functions.create_function(:min) do
  dispatch :min do
    param 'Numeric', :a
    param 'Numeric', :b
  end

  def min(x, y)
    x <= y ? x : y
  end
end
