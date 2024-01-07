class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_enum :topic, %w[programming databases design algorithms data_structures]

    create_table :posts do |t|
      t.enum :topics, enum_type: :topic, array: true, default: "{design, programming}"

      t.timestamps
    end
  end
end
