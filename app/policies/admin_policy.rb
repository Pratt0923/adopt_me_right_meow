class AdminPolicy
  attr_reader :user
  def initialize(user)
    @user = user
  end

  def index?
    is_admin?
  end

  private
  def is_admin?
    user.admin == true
  end
end
