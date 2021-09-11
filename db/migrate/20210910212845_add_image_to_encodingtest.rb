class AddImageToEncodingtest < ActiveRecord::Migration[6.1]
  def change
    add_column :encodingtests, :image, :string
  end
end
