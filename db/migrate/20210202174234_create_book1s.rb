class CreateBook1s < ActiveRecord::Migration[6.0]
  def change
    create_table :book1s do |t|
      t.string :title
      t.string :author
      t.integer :publication_year

      t.timestamps
    end
  end
end
