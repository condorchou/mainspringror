class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'super_admin'
      can :manage, :all
    elsif user.role == 'client_admin'
      can :manage, [Video], :client_id => user.client.id
      #should not allow client_admin to create a super_admin
      #TODO: need to prevent selection of super_admin in views
      can [:manage], [User], :client_id => user.client.id
      can [:show,:edit,:update], [Client], :id => user.client.id
      can :manage, ContentAsset, :client_id => user.client.id
    elsif user.role == 'intranet_user'
      can :show, Client, :id => user.client.id #required for nested resource, since it goes through client
      can [:show], Video, :client_id => user.client.id
      can :read, ContentAsset, :client_id => user.client.id
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
