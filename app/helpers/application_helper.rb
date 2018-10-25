module ApplicationHelper

  def calc_completeness
    completeness = 0
    if current_user.about_contents_complete?
      completeness += 25
    end
    if current_user.business_details_complete?
      completeness += 25
    end
    if current_user.integrations_complete?
      completeness += 25
    end
    if current_user.services_contents_complete?
      completeness += 25
    end
    return completeness
  end
end
