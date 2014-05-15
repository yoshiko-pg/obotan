require 'spec_helper'

describe User do

  before { @user = User.new(provide:'twitter', uid:'1530581461') }

  subject { @user }

  it { is_expect.to respod_to(:provide) }
  it { is_expect.to respod_to(:uid) }
end
