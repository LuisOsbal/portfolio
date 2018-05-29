class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.text :brand_logo_url
      t.text :brand_url
      t.string :brand_contact
      t.string :title
      t.string :position
      t.string :description
      t.string :content
      t.jsonb :activities
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
