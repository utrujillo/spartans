class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.string :nombre_etiqueta

      t.timestamps null: false
    end
  end
end
