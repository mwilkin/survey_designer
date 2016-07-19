require('spec_helper')

describe(Survey) do

  it("validates the presence of a descriptor") do
    list = List.new({:name => ""})
    expect(list.save()).to(eq(false))
  end

end
