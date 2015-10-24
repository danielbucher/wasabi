class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :mobile_phone
      t.references :position, index: true, foreign_key: true
      t.references :tool, index: true, foreign_key: true
      t.string :team_size

      t.timestamps null: false
    end
  end
end
