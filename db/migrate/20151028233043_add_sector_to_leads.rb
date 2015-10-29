class AddSectorToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :sector, :string
  end
end
