class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      #  if user.book_promoter_role?
      #   can :manage, :users
      #  end

      if user.superadmin_role?
        can :manage, :all

      else
          can :update, Book do |book|
            book.user == user
            end

            can :destroy, Book do |book|
              book.user == user
            end

      
          can :update, Review do |review|
              review.user == user
            end

            can :destroy, Review do |review|
              review.user == user
            end
          

            can :create, Book
            can :create, Review
            can :read, :all
      end
    
    
  end
end
