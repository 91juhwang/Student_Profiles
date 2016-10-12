class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.references :profile
    	t.string	:title
    	t.text	:description
    	t.string	:skills

      t.timestamps null: false
    end
  end
end
