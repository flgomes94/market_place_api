require 'spec_helper'
describe User do
  before { @user = FactoryGirl.build(:user)}
  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should allow_value('example@domain.com').for(:email) }

  it { should be_valid }

end

describe "when wmail is not present" do
  before { @user.email = " "}
  it {should_note be_valid }

end
