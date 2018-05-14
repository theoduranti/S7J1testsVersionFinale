require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context 'Validation params' do
    it 'ensure first_name presence' do 
      user = User.new(last_name: 'last', email: 'test@test.fr').save
      expect(user).to eq(false)
    end

    it 'ensure last_name presence' do
      user = User.new(first_name: 'first', email: 'test@test.fr').save
      expect(user).to eq(false)   
    end

    it 'ensure email presence' do 
      user = User.new(last_name: 'last', first_name: 'first').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do 
      user = User.new(first_name: 'first', last_name: 'last', email: 'test@test.fr', password: '1234567').save
      expect(user).to eq(true)
    end
  end

    context 'scope tests' do 
    end
end