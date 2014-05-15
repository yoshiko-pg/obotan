require 'spec_helper'

describe "words/show" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :user_id => 1,
      :category_id => 2,
      :word => "Word",
      :mean => "Mean",
      :remember_count => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Word/)
    rendered.should match(/Mean/)
    rendered.should match(/3/)
  end
end
