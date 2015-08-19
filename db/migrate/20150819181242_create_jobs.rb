class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :client, index: true

      t.timestamps
    end
  end
end
