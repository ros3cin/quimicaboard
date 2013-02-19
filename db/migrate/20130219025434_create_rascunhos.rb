class CreateRascunhos < ActiveRecord::Migration
  def change
    create_table :rascunhos do |t|
      t.integer :posicaoX
      t.integer :posicaoY
	  t.belongs_to :modelo
      t.timestamps
    end
  end
end
