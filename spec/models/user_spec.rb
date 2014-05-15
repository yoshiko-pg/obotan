require 'spec_helper'

describe User do

  before { @user = User.new(provide:'twitter', uid:'1530581461', user_name: 'yoshiko_pg') }

  subject { @user }

  it { is_expect.to respod_to(:provide) }
  it { is_expect.to respod_to(:uid) }
  it { is_expect.to respod_to(:user_name) }

  it { is_expect.to valid }

  describe "when provide is not present" do
    before { @user.provide = " " }
    it { is_expect.not_to be_valid }
  end

  describe "when uid is not present" do
    before { @user.uid = " " }
    it { is_expect.not_to be_valid }
  end

  describe "when user_name is not present" do
    before { @user.user_name = " " }
    it { is_expect.not_to be_valid }
  end

  describe "can't register duplicate uid" do
    let(:another_user) { User.new(@user.merge({user_name: 'hoge'})) }
    it { another_user.not_to be_valid }
  end

  describe "category assosiation" do
    let!(:category) { @user.categories.create(name: "lorem") }

    it "should destroy associated category" do
      category = @user.category.to_a
      @user.destroy
      expect(category).not_to be_empty
      expect(Category.find_by_id(category.id)).to be_nil
    end
  end
end
