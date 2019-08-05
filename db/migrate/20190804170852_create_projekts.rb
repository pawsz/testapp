class CreateProjekts < ActiveRecord::Migration[6.0]
  def change
    create_table :projekts do |t|
      t.string :nazwa
      t.text :opis

      t.timestamps
    end
  end
end
