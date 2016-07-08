class CatPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def destroy?
    user.first.admin == true
  end

  def show
    true
  end



end
