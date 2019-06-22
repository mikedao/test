class CreateResume < ActiveRecord::Migration[5.2]
  def change
    create_table :resume_items do |t|
      t.string :title
      t.text :description
      t.string :category
      t.date :start
      t.date :end
      t.timestamps
    end
  end
end
