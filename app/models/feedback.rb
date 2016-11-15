class Feedback
  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/

  include ActiveModel::Model

  attr_accessor :email, :name, :message

  validates :email, :name, :message, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }
end
