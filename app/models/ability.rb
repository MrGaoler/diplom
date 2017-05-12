class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    case user.role
    when 'user'
      can :read, :all
      can :manage, Post, user_id: user.id
    when 'moderator'
      can :manage, :all
    when 'admin'
      can :manage, :all
    else
      can :read, :all
    end
  end
end
