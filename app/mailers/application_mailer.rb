class ApplicationMailer < ActionMailer::Base
  layout 'mailer'

  def feedback(record)
    @feedback = record

    mail to: ENV['MAILER_SENDER_ADDRESS']
  end
end
