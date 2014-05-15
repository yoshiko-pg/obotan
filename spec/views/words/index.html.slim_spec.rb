require 'spec_helper'

describe "words/index" do
  before(:each) do
    assign(:words, [
      stub_model(Word,
        :user_id => 1,
        :category_id => 2,
        :word => "Word",
        :mean => "Mean",
        :remember_count => 3
      ),
      stub_model(Word,
        :user_id => 1,
        :category_id => 2,
        :word => "Word",
        :mean => "Mean",
        :remember_count => 3
      )
    ])
  end

  it "renders a list of words" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    assert_select "tr>td", :text => "Mean".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
