class CreateImagemDaBibliotecas < ActiveRecord::Migration
  def change
    create_table :imagem_da_bibliotecas do |t|
      t.string :nome
      t.string :tipo
      t.binary :textura

      t.timestamps
    end
  end
end
