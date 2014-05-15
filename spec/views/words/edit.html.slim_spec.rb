require 'spec_helper'

describe "words/edit" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :user_id => 1,
      :category_id => 1,
      :word => "MyString",
      :mean => "MyString",
      :remember_count => 1
    ))
  end

  it "renders the edit word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", word_path(@word), "post" do
      assert_select "input#word_user_id[name=?]", "word[user_id]"
      assert_select "input#word_category_id[name=?]", "word[category_id]"
      assert_select "input#word_word[name=?]", "word[word]"
      assert_select "input#word_mean[name=?]", "word[mean]"
      assert_select "input#word_remember_count[name=?]", "word[remember_count]"
    end
  end
end
