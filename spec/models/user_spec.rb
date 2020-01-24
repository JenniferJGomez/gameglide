require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = User.create(username: "Marija", password: "1234")
      expect(user).to be_valid
    end
  end

  describe 'navigate users pages' do
    before do
      @user = User.create(name: "Marija", password: "1234")
    end 
    it 'to user pages' do
      visit "/userss/#{@user.id}"
      expect(page.status_code).to eq(200)
    end 
  end

end
