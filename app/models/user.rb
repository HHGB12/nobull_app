class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :about_content
  has_one :business_detail
  has_one :integration
  has_one :services_content


  after_create :create_about_content, :create_business_detail, :create_integration, :create_services_content

  def create_about_content
    about_content = AboutContent.new
    about_content.user_id = self.id
    about_content.save!
  end
  def create_business_detail
    business_detail = BusinessDetail.new
    business_detail.user_id = self.id
    business_detail.save!
  end
  def create_integration
    integration = Integration.new
    integration.user_id = self.id
    integration.save!
  end
  def create_services_content
    services_content = ServicesContent.new
    services_content.user_id = self.id
    services_content.save!
  end

end
