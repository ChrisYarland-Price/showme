class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.text :image
      t.text :summary
      t.text :technologies
      t.boolean :published

      t.timestamps
    end
  end
end
