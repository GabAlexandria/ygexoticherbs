class CreateMailingLists < ActiveRecord::Migration
  def change
    create_table :mailing_lists do |t|
      t.string :email
      t.string :name
      t.boolean :receives_emails, :default => true
      t.timestamps
    end
  end
end
