class UserMailer < ApplicationMailer
  def send_admin_user_details(user_id)
    @user = User.find(user_id)
    mail(
      :subject => 'New NoBull App Signup',
      :to  => 'rich@nobullco.com',
      :from => 'rich@nobullco.com',
      :track_opens => 'true')
  end
end
