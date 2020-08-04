class Pet < ApplicationRecord
  SPECIES = ['cat', 'dog', 'hamster', 'parrot', 'yoshi']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - date).to_i
  end
end
