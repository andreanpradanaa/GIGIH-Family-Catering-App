class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, default: ""
      t.text :description, default: ""
      t.float :price, default: 0.01
      t.boolean :aneka_minuman, default: false
      t.boolean :aneka_sayuran, default: false
      t.boolean :aneka_ayam, default: false
      t.boolean :lainnya, default: false
      t.boolean :available, default: true
      t.boolean :catering, default: false
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
