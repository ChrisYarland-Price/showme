class ChangeFieldProjectName < ActiveRecord::Migration[5.1]
  def change
  	change_column_null :projects, :name, :false, :default => ""
  end
end
