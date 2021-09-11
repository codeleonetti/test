class CreateEncodingtests < ActiveRecord::Migration[6.1]
  def change
    create_table :encodingtests do |t|

      t.timestamps
    end
  end
end
