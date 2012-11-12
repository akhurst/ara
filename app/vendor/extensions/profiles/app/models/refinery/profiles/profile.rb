module Refinery
  module Profiles
    class Profile < Refinery::Core::BaseModel
      self.table_name = 'refinery_profiles'

      attr_accessible :name, :graduation_date, :photo_id, :profile, :position

      acts_as_indexed :fields => [:name, :profile]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
