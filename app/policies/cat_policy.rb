class CatPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def destroy?
    user.admin == true
  end



end
