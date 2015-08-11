class CreateComments < ActiveRecord::Migration
	def up
		create_table :comments do |t|
			t.string :author_name
			t.text :body
			t.references :article, :index => true, :foreign_key => true

			t.timestamps :null => false
		end
	end

	def down
		drop_table :comments
	end
end
