class CreateMunicipios < ActiveRecord::Migration[5.2]
  def change
    create_table :municipios do |t|
      t.string :nome
      t.references :uf, foreign_key: true

      t.timestamps
    end
  end
end
