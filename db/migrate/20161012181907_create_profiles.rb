class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

    	t.string 	:name
    	t.string	:description
    	t.string 	:location
    	t.string	:course
    	t.references :student

      t.timestamps null: false
    end
  end
end
