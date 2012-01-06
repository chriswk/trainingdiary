class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role? :admin
      can :manage, :all
    elsif user.role? :user
      can :read, User
      can :manage, User do |u|
        u.try(:id) == user.id
      end
    end
  end
end
