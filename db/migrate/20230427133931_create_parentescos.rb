class CreateParentescos < ActiveRecord::Migration[5.2]
  def change
    create_table :parentescos do |t|
      t.string :parentesco

      t.timestamps
    end
  end
end
