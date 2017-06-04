module ApplicationHelper
  def footer?
    %w[
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
