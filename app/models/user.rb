class User < ApplicationRecord
  validates :account,      presence: true, format: { with: /\A[a-z0-9]+\z/i }
  validates :username,     presence: true
  validates :introduction, presence: true
  validates :icon_url,     presence: true
  validates :cover_url,    presence: true
  has_many :tweets
end
