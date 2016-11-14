class FeedbacksController < ApplicationController
  expose :feedback

  def new
  end

  def create
    binding.pry
    ApplicationMailer.feedback(feedback).deliver_now if feedback.valid?
    respond_with feedback, location: root_path
  end

  private

  def feedback_params
    params.fetch(:feedback, {}).permit(:email, :name, :message)
  end
end
