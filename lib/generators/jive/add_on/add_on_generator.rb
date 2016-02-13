require 'rails/generators/base'
require 'jive/add_on/compatibility'

module Jive
	class AddOn < ActiveRecord::Base
		class Generator < Rails::Generators::Base
			source_paths << File.join(File.dirname(__FILE__), 'templates')
		end
	end
end

