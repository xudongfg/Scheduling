class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :first_name, null: false
      t.string :middle_initial
      t.string :last_name, null: false
      t.string :provider_specialty

      t.timestamps null: false
    end
  end
end
