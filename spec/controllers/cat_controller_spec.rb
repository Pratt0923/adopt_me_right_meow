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
    cat = create(:cat)
    post :destroy, {:id => 1
    }

    expect(Cat.count).to eq(0)

  end

  it 'lets users import csv' do
    post :import, :file => Rack::Test::UploadedFile.new("cats.csv")
  end

  it 'lets users import excel' do
    post :import, :file => Rack::Test::UploadedFile.new("cats.xls")
  end

  it 'lets users import excelX' do
    post :import, :file => Rack::Test::UploadedFile.new("cats.xlsx")
  end

  it 'unknown file type when uploaded file is not right type' do
    begin
      post :import, :file => Rack::Test::UploadedFile.new("README.md")
    rescue
       r = "Wrong filetype"
    end
    expect(r).to eq("Wrong filetype")
  end




end
