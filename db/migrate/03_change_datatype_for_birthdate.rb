class CreateStudents < ActiveRecord::Migration[5.1]

  def self.change_column
    sql = CHANGE COLUMN students
          # (id INTEGER PRIMARY KEY,
          # name TEXT,
          # grade TEXT,
          # birthdate INTEGER)
      DB[:conn].execute(sql)
  end


  def change
    change_column :students, :birthdate, :datetime
  end


end
