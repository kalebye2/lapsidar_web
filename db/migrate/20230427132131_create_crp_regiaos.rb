class CreateCrpRegiaos < ActiveRecord::Migration[5.2]
  def change
    create_table :crp_regiaos do |t|
      t.references :uf, foreign_key: true

      t.timestamps
    end
  end
end
