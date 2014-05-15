require 'spec_helper'

describe "words/new" do
  before(:each) do
    assign(:word, stub_model(Word,
      :user_id => 1,
      :category_id => 1,
      :word => "MyString",
      :mean => "MyString",
      :remember_count => 1
    ).as_new_record)
  end

  it "renders new word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", words_path, "post" do
      assert_select "input#word_user_id[name=?]", "word[user_id]"
      assert_select "input#word_category_id[name=?]", "word[category_id]"
      assert_select "input#word_word[name=?]", "word[word]"
      assert_select "input#word_mean[name=?]", "word[mean]"
      assert_select "input#word_remember_count[name=?]", "word[remember_count]"
    end
  end
end
