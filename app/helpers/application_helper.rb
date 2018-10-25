module ApplicationHelper
  def is_complete?(model)
    return false unless current_user.model.is_complete?
  end
end
