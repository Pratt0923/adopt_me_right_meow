require 'rails_helper'
require 'spec_helper'


describe EmailController do
  it 'can add users to the subscription list' do
    user = create :user
    sign_in user
    post :create, {
      :subscribe => "yes"
    }
    user.reload
    expect(user.subscription).to eq(true)

  end


end
