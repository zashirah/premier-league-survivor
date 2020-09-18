class DropResultColumnFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :result, :string
  end
end
