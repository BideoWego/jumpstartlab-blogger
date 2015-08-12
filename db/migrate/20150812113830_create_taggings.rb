class CreateTaggings < ActiveRecord::Migration
	def up
		create_table :taggings do |t|
			t.references :tag, :index => true, :foreign_key => true
			t.references :article, :index => true, :foreign_key => true

			t.timestamps :null => false
		end
	end

	def down
		drop_table :taggings
	end
end
