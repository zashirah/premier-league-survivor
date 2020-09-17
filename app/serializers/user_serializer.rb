class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :leagues, :picks, :total_score

  def total_score
    object.total_score
  end
end