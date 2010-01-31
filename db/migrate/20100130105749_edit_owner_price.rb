class EditOwnerPrice < ActiveRecord::Migration
  def self.up
  	change_table :trains do |t|
  		t.change :owner, :string
			t.change :price, :integer
		end
  end

  def self.down
   	change_table :trains do |t|
  		t.change :owner, :integer
			t.change :price, :string
		end
  end
end
