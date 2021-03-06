class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)

   case user.categoria # a_variable is the variable we want to compare
       when 3  # administrador
          can :manage, :all
       when 2  # de Recursos humanos
           can :read, ActiveAdmin::Page, :name =>"Dashboard"
           can [:create,:read,:update,:destroy],  [Employee]
           can [:create,:read,:update,:destroy],  [Family,Experience,Student,Agreement,Function]
       when 1   # usuario empleado
          can :read, ActiveAdmin::Page, :name =>"Dashboard"
          can [:read], [Employee]
          can [:read], [Family,Experience,Student]
        when 4  # director
           can :read, ActiveAdmin::Page, :name =>"Dashboard"
           can [:read], [Employee]
           can [:read], [Family,Experience,Student]
           can [:create,:read,:update,:destroy], [Function]
    end

    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
