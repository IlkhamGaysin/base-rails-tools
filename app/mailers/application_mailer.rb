class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def feedback(record)
    @feedback = record

    mail from: @feedback.email, to: ENV['MAILER_SENDER_ADDRESS']
  end
end
