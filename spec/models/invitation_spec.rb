require 'rails_helper'
require 'spec_helper'

Rspec.describe Invitation, type: :model do
  it 'validate presence of user_id' do
    expect { should validate_presence_of(user_id) }
  end
  it 'validate presence of event_id' do
    expect { should validate_presence_of(event_id) }
  end
  describe 'Active recored associations' do
    it 'belongs_to user' do
      expect { should belongs_to(:user) }
    end
    it 'belongs_to event' do
      expect { should belongs_to(:event) }
    end
  end
end
