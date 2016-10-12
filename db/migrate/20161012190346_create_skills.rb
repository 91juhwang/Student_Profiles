class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.references :profile
    	t.string :name
    	
      t.timestamps null: false
    end
  end
end
