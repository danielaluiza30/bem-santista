class AddTelInstituicao < ActiveRecord::Migration[5.2]
  def change
    add_column :instituicaos, :tel, :string
  end
end
