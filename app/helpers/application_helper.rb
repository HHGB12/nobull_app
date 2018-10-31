module ApplicationHelper

  def calc_completeness
    completeness = 0
    if current_user.about_contents_complete?
      completeness += 16.6
    end
    if current_user.business_details_complete?
      completeness += 16.6
    end
    if current_user.integrations_complete?
      completeness += 16.6
    end
    if current_user.services_contents_complete?
      completeness += 16.6
    end
    if current_user.extra_pages_complete?
      completeness += 16.6
    end
    if current_user.uploads_complete?
      completeness += 16.6
    end
    return completeness
  end

  def is_complete?
     calc_completeness().round == 100
  end
end
