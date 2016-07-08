class AdminPolicy
  def initialize(user)
    @user = user
  end

  def index?
    is_admin?
  end

  def show
    true
  end

  private
  def is_admin?
    user.admin == true
  end
end
