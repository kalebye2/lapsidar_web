class CreateResponsavelUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :responsavel_usuarios do |t|
      t.integer :usuario_id
      t.integer :responsavel_id
      t.references :parentesco, foreign_key: true

      t.timestamps
    end
  end
end
