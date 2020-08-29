class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.map(&:email), subject: 'アジェンダ削除完了通知'
  end
end
