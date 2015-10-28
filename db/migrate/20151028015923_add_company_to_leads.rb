class AddCompanyToLeads < ActiveRecord::Migration
  def change
    change_table :leads do |t|
      t.string :company
    end
  end
end
