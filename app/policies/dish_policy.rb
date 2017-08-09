class DishPolicy < ApplicationPolicy
  attr_reader :user

  class  Scope < Scope
    def resolve
      if user.nil?
        scope.where("published: true")
      elsif user.try(:admin?)
        scope.all
      else
        scope.where("published: true")
      end
    end
  end

  def initialize(user, dish)
    @user = user
    @dish = dish
  end

  def new?
    admin?
  end

  def create?
    admin?
  end

  def show?
  end

  def update?
    # admin?
    admin_owner?
  end

  def destroy?
    # admin?
    admin_owner?
  end

end
