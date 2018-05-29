class CreateTimelines < ActiveRecord::Migration[5.2]
  def change
    create_table :timelines do |t|
      t.text :brand_logo_url
      t.string :title
      t.string :description
      t.string :content
      t.text :brand_url
      t.string :brand_contact
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
