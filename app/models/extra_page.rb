class ExtraPage < ApplicationRecord
  belongs_to :user
  after_commit :match_complete_status
 


  private
  def match_complete_status
    if self.is_complete? 
      User.update(self.user_id, extra_pages_complete: true)
    else
      User.update(self.user_id, extra_pages_complete: false)
    end
  end
end
