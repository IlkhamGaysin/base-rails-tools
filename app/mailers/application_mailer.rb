class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def feedback(record)
    @feedback = record

    mail from: @feedback.email, to: ENV['FEEDBACK_RECEIVER_EMAIL']
  end
end
