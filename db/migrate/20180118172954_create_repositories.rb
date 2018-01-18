class CreateRepositories < ActiveRecord::Migration[5.0]
  def change
    create_table :repositories do |t|
			t.belongs_to :language, index: true
      t.integer :github_id
      t.string :name
      t.string :full_name
      t.string :html_url
      t.string :owner_url
      t.string :owner_login
      t.string :description
      t.boolean :private
      t.timestamps
    end
  end
end
