class SessionForm
  include ActiveModel::Model

  attr_accessor :account, :user
  validates :account, presence: true
  validate  :match_account

  private
  def match_account
    self.user = User.find_by(account: account)
    if user.blank?
      errors.add(:account, :invalid)
    else
      true
    end
  end
end
