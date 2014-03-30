require 'spec_helper'

describe Owner do
  context 'validations' do
    let(:owner) {Owner.new}

    it 'requires a first name' do
      expect(owner).to_not be_valid
      expect(owner.errors[:first_name]).to include("can't be blank")
    end

    it 'requires a last name' do
      expect(owner).to_not be_valid
      expect(owner.errors[:last_name]).to include("can't be blank")
    end

    it 'requires an email' do
      expect(owner).to_not be_valid
      expect(owner.errors[:email]).to include("can't be blank")
    end

    it 'requires a dog' do
      expect(owner).to_not be_valid
      expect(owner.errors[:dog]).to include("can't be blank")
    end
  end
end
