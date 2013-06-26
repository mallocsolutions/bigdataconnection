class CreateBdcs < ActiveRecord::Migration
  def change
    create_table :bdcs do |t|

      t.timestamps
    end
  end
end
