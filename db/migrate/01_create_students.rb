class CreateStudents < ActiveRecord::Migration[5.1]

  # validates :name, presence: true

  def self.create_table
    sql = CREATE TABLE IF NOT EXISTS students
          # (id INTEGER PRIMARY KEY,
          #  name TEXT)
      DB[:conn].execute(sql)
  end

  def change
    create_table :students do |t|
      t.string :name

      t.timestamps
    end
  end


end
