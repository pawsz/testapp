class AddZadaniumToProjekt < ActiveRecord::Migration[6.0]
  def change
    add_reference :projekts, :zadania, foreign_key: true
  end
end
