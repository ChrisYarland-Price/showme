class CreateSpartansProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :spartans_projects do |t|
      t.integer :spartan_id
      t.integer :project_id
    end
  end
end
