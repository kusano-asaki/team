class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    @users = @agenda.team.users
    mail to: @users.map(&:email), subject: 'アジェンダ削除完了通知'
  end
end
