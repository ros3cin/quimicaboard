class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :titulo
      t.string :dono
	  t.has_many :imagem
	  t.has_many :rascunho
      t.timestamps
    end
  end
end
