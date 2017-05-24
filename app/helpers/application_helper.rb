module ApplicationHelper
  def footer?
    %w[
      home
      registrations
      confirmations
      mailer
      passwords
      sessions
      shared
      unlocks
    ].exclude?(controller_name)
  end
end
