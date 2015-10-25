class ChangeToolToStringInLeads < ActiveRecord::Migration
  def change
    remove_column :leads, :tool_id
    add_column :leads, :tool, :string
  end
end
