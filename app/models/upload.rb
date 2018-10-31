class Upload < ApplicationRecord
  belongs_to :user
  after_commit :match_complete_status
  has_many_attached :logo_images
  has_many_attached :team_images
  has_many_attached :workspace_images
  has_many_attached :other_images
 


  private
  def match_complete_status
    if self.is_complete? 
      User.update(self.user_id, uploads_complete: true)
    else
      User.update(self.user_id, uploads_complete: false)
    end
  end
end
