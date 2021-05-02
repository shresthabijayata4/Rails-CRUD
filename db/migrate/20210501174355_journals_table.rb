class JournalsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :journals do |t|
     
      t.string :title
      t.float :amount
      t.string :cashin_out

      t.timestamps
    end
  end
end
