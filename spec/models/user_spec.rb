require 'spec_helper'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation


describe User do

  it "is invalid without an email" do
    matt = User.new(name: "matt", password: "password", :password_confirmation => "password")
    expect(matt.save).to eq(false)
  end

  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  after(:each) do
    DatabaseCleaner.clean
  end

  it "returns the name of the user" do
    expect(@user.name).to eq("John")
  end

  it "can return the phone number of a user"

end