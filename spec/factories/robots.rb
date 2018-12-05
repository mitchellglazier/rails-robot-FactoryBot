FactoryBot.define do
  factory :robot do
    name 'bob'
    serial { SecureRandom.hex }
    friendly true

    inventor
  end
end

#FactoryBot.create(:robot)
#FactoryBot.create(:robot, friendly: false
#FactoryBot.create(:robot, friendly: false, name: 'Steve'))

#FactoryBot.build(:robot) - creates an instance but not saves

#FactoryBot.attributes_for(:robot) - hash of everything a robot has

#FactoryBot.build_stubbed(:robot) - creates a default factory

#FactoryBot.create(:robot) do |robot|
  #robot.parts(attributes_for(:parts))
#end

# name { Robot.generate_name } - lazy attribute

# email { "#{first_name}@email.com"} - dependent attribute

# sequence :email do |n|
#  "inventor#{n}@email.com"
# end

# build_list(:robot, 100) - build multiple robots

# create_list(:robot, 100) - build and save multiple robots

# before(:build)
# after(:build)
# before(:create)
# after(:stub)
