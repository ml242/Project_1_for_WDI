require "spec_helper"
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB


describe UserMailer do

  describe 'welcome email' do
    before(:each) do
      ActionMailer::Base.delivery_method = :test
      # ActionMailer::Base.perform_deliveries = false
      ActionMailer::Base.deliveries = []
      @user = FactoryGirl.create(:user)
      UserMailer.welcome_email(@user).deliver
    end

    after(:each) do
      ActionMailer::Base.deliveries.clear
      DatabaseCleaner.clean
    end

    it 'renders the receiver email' do
      ActionMailer::Base.deliveries.first.to == @user.email
    end

    it 'sets the subject to the correct subject' do
      ActionMailer::Base.deliveries.first.subject == 'Welcome to The Big Leagues of Climbing'
    end

    it 'sends an email' do
      ActionMailer::Base.deliveries.count == 1
    end


  end
end