class CreateJoinTableUsersLeagues < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :leagues do |t|
      # t.index [:user_id, :league_id]
      # t.index [:league_id, :user_id]
    end
  end
end
