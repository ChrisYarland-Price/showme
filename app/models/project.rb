class Project < ApplicationRecord
  has_many :spartans_projects
  has_many :spartans, through: :spartans_projects
end
