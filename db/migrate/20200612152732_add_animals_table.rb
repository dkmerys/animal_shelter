class AddAnimalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :gender
      t.string :quote
    end
  end
end
