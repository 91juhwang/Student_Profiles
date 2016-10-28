class AddingColumnsForStudents < ActiveRecord::Migration
  def change
  	add_column :students, :student_type, :string
  	add_column :students, :job_type, :string
  end
end
