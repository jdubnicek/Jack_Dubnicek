class DishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(published: true).or(scope.where(user_id: @user.try(:id)))
    end
  end

  def new?
    admin?
  end

  def create?
    admin?
  end

  def show?
    admin? || @dish.published
  end

  def update?
    admin?
  end

  def destroy?
    admin?
  end
end
