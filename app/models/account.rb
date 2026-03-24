class Account < ApplicationRecord
  ACCOUNT_TYPES = %w[checking savings cash credit_card investment].freeze
  
  validates :name, presence: true
  validates :account_type, presence: true, inclusion: { in: ACCOUNT_TYPES }
  validates :starting_balance, :current_balance, presence: true
end
