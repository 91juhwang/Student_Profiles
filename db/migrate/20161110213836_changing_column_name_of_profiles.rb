class ChangingColumnNameOfProfiles < ActiveRecord::Migration
  def change
  	rename_column :profiles, :description, :status
  end
end
