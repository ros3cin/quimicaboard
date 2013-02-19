# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130219025434) do

  create_table "imagem_da_bibliotecas", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.binary   "textura"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "imagems", :force => true do |t|
    t.integer  "posicaoX"
    t.integer  "posicaoY"
    t.integer  "imagemDaBiblioteca_id"
    t.integer  "modelo_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "imagems", ["imagemDaBiblioteca_id"], :name => "index_imagems_on_imagemDaBiblioteca_id"

  create_table "modelos", :force => true do |t|
    t.string   "titulo"
    t.string   "dono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rascunhos", :force => true do |t|
    t.integer  "posicaoX"
    t.integer  "posicaoY"
    t.integer  "modelo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
