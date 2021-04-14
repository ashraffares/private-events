require 'rails_helper'
require 'spec_helper'

Rspec.describe Event, type: :model do
    it 'validate name,start_date,end_date,location,description,creator_id' do
        event = Event.new(name:'Rails odd',start_date:'11/4/2020',end_date:'11/4/2020',location:'Alex',description:'cover rails weird part',creator_id:'1')
        expect (event.valid?).to be(true)
    end
    it 'validate name,start_date,end_date,location,description,creator_id' do
        event = Event.new(name:'',start_date:'',end_date:'',location:'',description:'',creator_id:'')
        expect (event.valid?).to be(false)
    end
    describe 'Active recored associations' do
        it 'belongs_to creator' do
            expect {should belongs_to(:creator).class_name('User')}
        end
        it 'has_many invitation' do
            expect {should has_many(:invitation).dependent(:destroy)}
        end
        it 'has_many attendees through invitation' do
            expect {should has_many(:attendees).through(:invitation)}
        end
    end
end