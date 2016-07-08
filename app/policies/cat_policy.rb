class CatPolicy
  attr_reader :user, :cat

  def initialize(user, cat)
    @user = user
    @cat = cat
  end

  def destroy?
    if user
    user.admin?
    else
      false
    end
  end

  def show
    true
  end
end
