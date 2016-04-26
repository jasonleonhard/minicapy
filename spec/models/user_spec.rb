require 'rails_helper'

RSpec.describe User, type: :model do
# Without Factories Section
  it 'creates an in line user with first and last name' do
    user = User.create!(first: 'hello', last: 'world' )
  end
	
	it 'creates an in line user and verify first and last name' do
    user = User.create!(first: 'hello', last: 'world' )
    user.first.should eq('hello')
    user.last.should eq('world')
	end

  it 'user validations and not nil' do
		user = User.new(first: 'some', last: 'person') 		# regular syntax
  	expect(user).to be_valid
  	expect(user).to_not be_nil
  end
	
	it 'user equality and truthyness' do
  	user = User.new(first: 'some', last: 'person') 		# regular syntax
  	expect(user).to eq(user)
  	expect(user).to be_truthy
	end

	it 'user first is not the same as last' do
		user = User.new(first: 'some', last: 'person')
		# first
		expect(user.first).to eq(user.first)
		expect(user.first).to_not eq(user.last)
		expect(user.first).to eq('some')
		expect(user.first).to_not eq('person')
		# last
		expect(user.last).to eq(user.last)
		expect(user.last).to_not eq(user.first)
		expect(user.last).to_not eq('some')
		expect(user.last).to eq('person')
	end

# Factory Section
  it 'creates a user with factoryGirl and validate' do
    user = FactoryGirl.create(:user, first: 'hello', last: 'world' )
    user.first.should eq('hello')
    user.last.should eq('world')
  end

  it 'creates a user with factoryGirl and validate' do
    user = FactoryGirl.create(:user, first: 'hello', last: 'world' )
    user.first.should eq('hello')
    user.last.should eq('world')
  end

  # special factorygirl syntax methods below
  it 'creates a user with factoryGirl and validates the default first and last name' do
    user = create(:user)
    user.first.should eq('MyString')
    user.last.should eq('MyString')
 	end

 	it 'creates a user with factoryGirl and validates the redefined first and last name' do
    user = create(:user, first: 'hello', last: 'world' )
    user.first.should eq('hello')
    user.last.should eq('world')
  end

  it 'creates, but does not save a user with factoryGirl and validates the redefined first and last name' do
    user = build(:user, first: 'hello', last: 'world' )
    user.first.should eq('hello')
    user.last.should eq('world')
  end
end
