require 'rails_helper'

RSpec.describe Ninja, type: :model do
  before do
    @ninja = Ninja.new(
      ninja_name: Faker::Name.name,
      ninja_description: Faker::Hacker.say_something_smart
    )
  end

  it 'is valid with ninja_name and ninja_description' do
    expect(@ninja).to be_valid
  end

  it 'is invalid without ninja_name' do
    @ninja.ninja_name = ''
    expect(@ninja).to be_invalid
  end

  it 'is invalid without ninja_description' do
    @ninja.ninja_description = ''
    expect(@ninja).to be_invalid
  end
end
