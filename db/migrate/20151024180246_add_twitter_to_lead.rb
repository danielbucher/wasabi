class AddTwitterToLead < ActiveRecord::Migration
  def change
    change_table :leads do |t|
      t.string :twitter
    end
  end
end
