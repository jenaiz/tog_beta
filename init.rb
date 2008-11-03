require_plugin 'tog_core'
require_plugin 'tog_user'
require_plugin 'beta_invitation'

Dir[File.dirname(__FILE__) + '/locale/**/*.yml'].each do |file|
  I18n.load_translations file
end

Tog::Plugins.settings :tog_beta,  :default_invitation_limit         => 5,
                                  :refill_invitations_when_used     => false
                                  
#Tog::Plugins.helpers UsersHelper

Tog::Plugins.observers << :user_observer

Tog::Interface.sections(:member).add "Invitations", "/member/beta"          
