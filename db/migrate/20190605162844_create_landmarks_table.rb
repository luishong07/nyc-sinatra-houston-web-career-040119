class CreateLandmarksTable < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :year_completed
      t.integer :figure_id
      #figure id maybe later ???
    end
  end
end
