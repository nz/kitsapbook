require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Person do

  before(:each) do
    @person = Person.new(:name => "John Doe")
  end

  it "should be valid" do
    @person.should be_valid
  end
  
  it "should have a name" do
    @person.should respond_to(:name)
  end
  
  it "should not be valid without a name" do
    @person.name = nil
    @person.should_not be_valid
  end

end
