class CreateZadania < ActiveRecord::Migration[6.0]
  def change
    create_table :zadania do |t|
      t.string :nazwa
      t.date :termin
      t.string :przydzial
      t.integer :priorytet
      t.text :opis

      t.timestamps
    end
  end
end
