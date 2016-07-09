
describe CatPolicy do
  it 'lets an admin delete a cat' do
      admin = create(:admin)
      cat = create(:cat)
      p = CatPolicy.new(admin, cat)
      expect(p.destroy?).to eq true
  end

  it 'does not let a general user delete a cat' do
    user = create(:user)
    cat = create(:cat)
    p = CatPolicy.new(user, cat)
    expect(p.destroy?).to eq false
  end

  it 'lets all users look at cats' do
    user = create(:user)
    cat = create(:cat)
    p = CatPolicy.new(user, cat)
    expect(p.show?).to eq true
  end
end
