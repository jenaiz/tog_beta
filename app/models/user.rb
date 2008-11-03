class User < ActiveRecord::Base

  before_create :set_invitation_limit

  has_one :inviter
  has_many :gests, :class_name => 'User', :foreign_key => 'inviter_id'

  protected

    def set_invitation_limit
      self.invitation_limit = Tog::Config["plugins.tog_beta.default_invitation_limit"]
    end

end