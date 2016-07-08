require 'rails_helper'
require 'spec_helper'

describe CatController do
  include Devise::TestHelpers
  it 'lets cats be created' do
      cat = create(:cat)
      expect(Cat.count).to eq(1)
      expect(Cat.first.name).to eq("fred")
      expect(Cat.first.description).to eq("description")
      expect(Cat.first.breed).to eq("breed")
      expect(Cat.first.age).to eq(3)
      expect(Cat.first.price).to eq("200.00")

    end

  it 'lets cats be destroyed by admins' do
    admin = create(:admin)
    cat = create(:cat)
    cat.destroy
    expect(Cat.count).to eq(0)
  end

  it 'does not let cats be destoryed by general users' do
    user = create(:user)
    sign_in user
    binding.pry
    cat = create(:cat)
    cat.destroy
    expect(Cat.count).to eq(1)
  end

end
