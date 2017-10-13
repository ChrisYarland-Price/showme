class ChangeFieldTechnologies < ActiveRecord::Migration[5.1]
  def change
  	change_column_null :projects, :technologies, :false, :default => ""
  end
end
