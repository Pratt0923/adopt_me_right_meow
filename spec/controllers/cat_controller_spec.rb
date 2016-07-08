require 'rails_helper'
require 'spec_helper'

describe CatController do
  it 'lets cats be created' do
    post :create, {
      :cat => {
        :name => "name",
        :description => "description",
        :breed => "breed", :price => "100.00",
        :age => 2
      }}
      expect(Cat.count).to eq(1)
      expect(Cat.first.name).to eq("name")
    end

  it 'lets cats be destroyed' do
  end

end
