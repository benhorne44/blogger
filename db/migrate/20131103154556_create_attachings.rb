class CreateAttachings < ActiveRecord::Migration
  def change
    create_table :attachings do |t|
      t.references :article, index: true
      t.references :attachment, index: true

      t.timestamps
    end
  end
end
