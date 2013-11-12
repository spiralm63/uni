class CreateSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :participants do |t|
      t.integer :course_id
      t.integer :student_id
    end

    create_table :course do |t|
      t.integer :instructor_id
      t.string  :title
      t.text    :description
      t.timestamps
    end
  end
end
