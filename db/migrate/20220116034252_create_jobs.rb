class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :jobTitle
      t.text :workContent
      t.text :conditionRequirements
      t.text :companyBenefits
      t.text :salaryRange
      t.boolean :open
      t.integer :company_id

      t.timestamps
    end
  end
end
