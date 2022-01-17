class CommentsMailer < ApplicationMailer

  def submitted(comment)
    @greeting = "Hi"
    @comment = comment

    mail from: 'from@example.org', to: "to@example.org", subject: 'New comment'
  end
end
