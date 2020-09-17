class User < ApplicationRecord
  has_and_belongs_to_many :leagues
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }

  has_many :picks

  def total_score
    points = 0
    picks.each do |pick|
      if pick.team == pick.match.home_team && pick.match.home_goals > pick.match.away_goals
        points += 3
      elsif pick.team == pick.match.away_team && pick.match.home_goals < pick.match.away_goals
        points += 3
      elsif pick.match.away_goals == pick.match.home_goals
        points += 1
      end
    end
    points
  end
end
