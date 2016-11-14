# class Feedback
#   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

#   include ActiveModel::Model

#   attr_accessor :email, :name, :message

#   validates :email, :name, :message, presence: true
#   validates :email, format: { with: VALID_EMAIL_REGEX }

#   def attributes=(attributes)
#     attributes.each do |key, value|
#       public_send "#{key}=", value
#     end
#   end
# end


class Feedback
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  include ActiveModel::Model

  attr_accessor :email, :name, :message

  validates :email, :name, :message, presence: true
  validates :email, format: VALID_EMAIL_REGEX

  def save
    valid?
  end

  def attributes=(attributes)
    attributes.each do |key, value|
      public_send "#{key}=", value
    end
  end
end
