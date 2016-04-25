require 'rails_helper'

# before do
#   @user = User.new(first: "some", last: "person")
# end


# RSpec.describe User, type: :model do
#   # pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User, type: :model do
  it 'should bla' do
  
  end

  it 'should have a first name' do
  
  end

  it 'should have a last name' do
  
  end

  it 'creates an in line user with first and last name' do
    user1 = User.create!(first: 'hello', last: 'world' )
  end
	
	it 'creates an in line user and verify first and last name' do
    user2 = User.create!(first: 'hello', last: 'world' )
    user2.first.should eq('hello')
    user2.last.should eq('world')
	end

  it 'creates a user with factoryGirl and validate' do
    user3 = FactoryGirl.create(:user, first: 'hello', last: 'world' )
    user3.first.should eq('hello')
    user3.last.should eq('world')
  end

end
