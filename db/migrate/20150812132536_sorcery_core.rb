class SorceryCore < ActiveRecord::Migration
	def up
		create_table :authors do |t|
			t.string :username,			:null => false

			t.string :email,            :null => false
			t.string :crypted_password
			t.string :salt

			t.timestamps
		end

		add_index :authors, :email, :unique => true
	end

	def down
		drop_table :authors
	end
end