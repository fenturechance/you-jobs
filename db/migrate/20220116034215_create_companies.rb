class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :companyName
      t.text :companyProfile
      t.text :companyPhilosophy
      t.text :mediaReports
      t.text :salaryAndBenefits

      t.timestamps
    end
  end
end
