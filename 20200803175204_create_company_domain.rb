class CreateCompanyDomain < ActiveRecord::Migration[6.0]
  def change
    create_table :company_domains do |t|
      t.string :domain, null: false
      t.string :company_name, null: false
      t.integer :year_founded
      t.string :industry
      t.string :size_range
      t.string :locality
      t.string :country
      t.string :linkedin_url
      t.integer :employee_estimate

      t.index %i[domain], unique: true
    end
  end
end
