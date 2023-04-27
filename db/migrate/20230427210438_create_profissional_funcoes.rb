class CreateProfissionalFuncoes < ActiveRecord::Migration[5.2]
  def change
    create_table :profissional_funcoes do |t|
      t.string :funcao

      t.timestamps
    end
  end
end
