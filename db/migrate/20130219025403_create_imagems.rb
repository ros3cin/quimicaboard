class CreateImagems < ActiveRecord::Migration
  def change
    create_table :imagems do |t|
      t.integer :posicaoX
      t.integer :posicaoY
      t.references :imagemDaBiblioteca
	  t.belongs_to :modelo
      t.timestamps
    end
    add_index :imagems, :imagemDaBiblioteca_id
  end
end
