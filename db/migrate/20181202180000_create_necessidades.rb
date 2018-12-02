class CreateNecessidades < ActiveRecord::Migration[5.2]
  def change
    create_table :necessidades do |t|
      t.string :descricao
      t.references :instituicao, foreign_key: true

      t.timestamps
    end
  end
end
