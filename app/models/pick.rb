class Pick < ApplicationRecord
  belongs_to :user
  belongs_to :league
  belongs_to :team
  belongs_to :match

end
