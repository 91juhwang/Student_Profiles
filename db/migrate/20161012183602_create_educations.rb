class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string 		:school
    	t.datetime 	:start
    	t.datetime 	:graduate
    	t.string		:major
    	t.references :profile

      t.timestamps null: false
    end
  end
end
