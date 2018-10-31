class ExtraPagePolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    raise Pundit::NotAuthorizedError, "Must be logged in" unless user
    @user = user
    @record = record
  end

  # def edit_extra_pages
  #   @user.admin? || @user == @record.user
  # end
end