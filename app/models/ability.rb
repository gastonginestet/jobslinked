class Ability
  include CanCan::Ability

  def initialize(user)
    send("#{user.role.name}_permissions", user)
  end

  def administrator_permissions(user)
    can :manage, :all
  end

  def author_permissions(user)
    can :read, JobAlert, :all

    can :create, JobAlert
    can %i[read update], User, { id: user.id }
  end

  def reader_permissions(user)
    can :read, JobAlert, :all
  end
end
