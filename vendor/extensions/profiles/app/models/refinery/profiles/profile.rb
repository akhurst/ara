module Refinery
  module Profiles
    class Profile < Refinery::Core::BaseModel
      self.table_name = 'refinery_profiles'

      attr_accessible :name, :graduation_date, :photo_id, :biography, :position

      acts_as_indexed :fields => [:name, :biography]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
