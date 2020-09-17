class CustomLeagueSerializer < ActiveModel::Serializer
  attributes :id, :manager_id, :name, :open_ind, :users

  def manager_id
    object.manager.id
  end

  def users
    object.users.map do |user|
      { username: user.username, total_score: user.total_score }
    end
  end

end
