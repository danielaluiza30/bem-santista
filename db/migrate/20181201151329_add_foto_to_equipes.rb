class AddFotoToEquipes < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :foto, :string
  end
end
