require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PeopleController do

  describe "index" do
    def do_get
      get :index
    end
    it "should be successful" do
      do_get
      response.should be_success
    end
    it "should provide a list of people in an instance variable" do
      mock_person = mock_model(Person)
      mock_people = [mock_person]
      Person.should_receive(:find).and_return(mock_people)
      do_get
      assigns[:people].should_not be_blank
    end
  end
  
end
