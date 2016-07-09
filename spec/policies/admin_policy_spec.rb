
describe AdminPolicy do
  it 'lets admins view the index' do
    user = create(:admin)
    p = AdminPolicy.new(user)
    expect(p.index?).to eq true
  end

  it 'does not let general users view the admin index' do
    user = create(:user)
    p = AdminPolicy.new(user)
    expect(p.index?).to eq false
  end
end
