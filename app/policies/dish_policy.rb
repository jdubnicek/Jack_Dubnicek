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
  end

  def update?
    admin_owner?
  end

  def destroy?
    admin_owner?
  end

  private

  def admin_owner?
    @user.admin == true && @dish.user_id == @user.id
  end
end
