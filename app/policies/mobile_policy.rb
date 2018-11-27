class MobilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    record.user.mobile.empty?
  end

  def edit?
    update?
  end

  def destroy?
    record.user.mobile.empty?
  end

end
