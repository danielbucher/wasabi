class Lead < ActiveRecord::Base

  PHONE_EX = /\((\d{2})\)\s(\d{4,5}\-\d{4})/
  EMAIL_EX = /\A(?:(?:[\w`~!#$%^&*\-=+;:{}'|,?\/]+(?:(?:\.(?:"(?:\\?[\w`~!#$%^&*\-=+;:{}'|,?\/\.()<>\[\] @]|\\"|\\\\)*"|[\w`~!#$%^&*\-=+;:{}'|,?\/]+))*\.[\w`~!#$%^&*\-=+;:{}'|,?\/]+)?)|(?:"(?:\\?[\w`~!#$%^&*\-=+;:{}'|,?\/\.()<>\[\] @]|\\"|\\\\)+"))@(?:[a-zA-Z\d\-]+(?:\.[a-zA-Z\d\-]+)*|\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])\z/

  belongs_to :position
  belongs_to :tool

  validates :name, :email, :mobile_phone, :position, :tool, :team_size,
    presence: true
  validates :team_size, numericality: { only_integer: true }
  validate :email_format
  validate :phone_format

  protected

  def email_format
    unless EMAIL_EX.match(self.email)
      errors.add(:email, "Invalid email format.")
    end
  end

  def phone_format
    unless PHONE_EX.match(self.mobile_phone)
      errors.add(:mobile_phone, "Invalid phone format.")
    end
  end
end
