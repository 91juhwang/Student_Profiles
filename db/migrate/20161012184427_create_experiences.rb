class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
    	t.references :profile
    	t.string :title
    	t.string :company
    	t.text :description
    	t.datetime :start
    	t.datetime :end

      t.timestamps null: false
    end
  end
end
