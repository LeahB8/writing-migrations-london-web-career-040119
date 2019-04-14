class CreateStudents < ActiveRecord::Migration[5.1]

  def self.add_column
    sql = ADD COLUMN students
          # (id INTEGER PRIMARY KEY,
          # name TEXT,
          # grade TEXT,
          # birthdate TEXT)
      DB[:conn].execute(sql)
  end

  def change
    add_column :students, :grade, :integer
    add_column :students, :birthdate, :string
  end


end
