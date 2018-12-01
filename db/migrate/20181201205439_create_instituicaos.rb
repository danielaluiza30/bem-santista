class CreateInstituicaos < ActiveRecord::Migration[5.2]
  def change
    create_table :instituicaos do |t|
      t.string :nome_fantasia
      t.string :razao_social
      t.string :cnpj
      t.string :email
      t.string :password_digest
      t.string :cep
      t.string :rua
      t.string :numero
      t.string :bairro

      t.timestamps
    end
  end
end
