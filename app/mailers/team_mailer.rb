class TeamMailer < ApplicationMailer
  def team_mail(team)
    @team = team
    mail to: @team.owner.email, subject: 'リーダー変更通知'
  end
end
