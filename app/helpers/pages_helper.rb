module PagesHelper

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

  def nearly_done_message
    case calc_completeness().round
    when 17
      'One down! Only five to go. 😁'
    when 33
      'Look at you go - thats two complete! Keep it going. Only four more to go! 🤠'
    when 50
      'Halfway! 🎉 Nice work. It\'s the easy one\'s left, I swear. '
    when 66
      'Two thirds done now - you\'re at the final push! 💪'
    when 83
      'Second last one. You\'ve got this! 🤗'
    when 100
      'YOU DID IT! 👏👏 All done! Time to celebrate! Go grab a beer or something - you\'ve earned it!'
    end

  end
end
