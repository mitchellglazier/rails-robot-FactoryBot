require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe 'friendly' do
    it 'greets properly' do
      # robot = Robot.create(name: 'bob', serial: '1234', friendly: true)
      # expect(robot.greet).to eq('hello')
      expect(FactoryBot.create(:robot).great).to eq('hello')
    end

    it 'greets properly' do
      # robot = Robot.create(name: 'bob', serial: '1234', friendly: false)
      #   xpect(robot.greet).to eq('die human!')
      expect(FactoryBot.create(:robot, friendly: false).greet).to eq('die human!')
    end
  end
end
