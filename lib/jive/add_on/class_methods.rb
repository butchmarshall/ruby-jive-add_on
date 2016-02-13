module Jive
	class AddOn < ActiveRecord::Base
		module ClassMethods
			def self.extended(base)
				base.validate :validate_registration
			end
		end
	end
end