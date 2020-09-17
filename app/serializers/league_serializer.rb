class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :manager_id, :name, :status, :member_count

  def manager_id
    object.manager.id
  end

  def member_count
    object.users.count
  end

  # def joined_ind
  #   object.users.find do |user|
  #     user.id == @current_user.id
  #   end
  # end
end
