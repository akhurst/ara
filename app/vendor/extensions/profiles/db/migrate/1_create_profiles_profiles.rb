class CreateProfilesProfiles < ActiveRecord::Migration

  def up
    create_table :refinery_profiles do |t|
      t.string :name
      t.datetime :graduation_date
      t.integer :photo_id
      t.text :profile
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-profiles"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/profiles/profiles"})
    end

    drop_table :refinery_profiles

  end

end
