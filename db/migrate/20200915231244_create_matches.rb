class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :home_team, null: false
      t.references :away_team, null: false
      t.integer :matchweek
      t.datetime :match_datetime
      t.integer :home_goals
      t.integer :away_goals
      t.string :result

      t.timestamps
    end

    add_foreign_key :matches, :teams, column: :home_team_id
    add_foreign_key :matches, :teams, column: :away_team_id
  end
end
