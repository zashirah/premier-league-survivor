class League < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :manager, :class_name => 'User', :foreign_key => 'user_id'
end
