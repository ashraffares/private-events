require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it 'validate email and password by devise' do
    user = User.new(email: '', password: '')
    expect(user.valid?).to be(false)
  end

  it 'validate email and password by devise' do
    user = User.new(email: 'fares@gmail.com', password: '000000')
    expect(user.valid?).to be(true)
  end

  describe 'Active recored associations' do
    it 'has_many created_events' do
      expect do
        should has_many(:created_events).with_forign_key(:creator_id).class_name('Event').dependent(:destroy)
      end
    end
    it 'has_many invitation' do
      expect { should has_many(:invitation) }
    end
    it 'has_many attended_event through invitation' do
      expect { should has_many(:attended_event).through(:invitation) }
    end
  end
end
