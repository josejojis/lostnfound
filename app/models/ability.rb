# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user

    if user.persisted? && user.admin_role?
      can :manage, :all
      can :access, :rails_admin  # only admin can access Rails Admin
      can :manage, :dashboard    # allow access to dashboard
    elsif user.persisted? && user.agent_role?
      can :create, FoundReport
      can :update, FoundReport, user_id: user.id
      can :destroy, FoundReport, user_id: user.id
    else
      can :read, :all
    end
  end
end
