class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.string :primary_color
      t.string :secondary_color

      t.timestamps
    end
  end
end
