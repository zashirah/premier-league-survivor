class UpdateOpenIndicatorColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :leagues, :open_ind, :boolean
    add_column :leagues, :status, :string
  end
end
