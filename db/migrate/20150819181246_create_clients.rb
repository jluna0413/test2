class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.boolean :clientstatus
      t.boolean :clientstatus

      t.timestamps
    end
  end
end
