class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def feedback_email(record)
    @feedback = record

    mail to: ENV["MAILER_SENDER_ADDRESS"]
  end
end
