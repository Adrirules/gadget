class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
       scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    record.user == user || user.admin
  end

  def update?
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end

  def tagged?
    true
  end

  def categged?
    true
  end

end
