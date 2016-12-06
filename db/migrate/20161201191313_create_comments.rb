class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nombre_completo
      t.text :comentario

      t.timestamps null: false
    end
  end
end
