class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
        t.string :name
        t.string :desciption
        t.string :phone
        t.integer :client_id
    end
  end
end
