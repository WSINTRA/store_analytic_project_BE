class CreateFrontads < ActiveRecord::Migration[5.2]
  def change
    create_table :frontads do |t|
      t.string :banner_url
      t.string :side_url
      t.string :video_url
      t.string :details

      t.timestamps
    end
  end
end
