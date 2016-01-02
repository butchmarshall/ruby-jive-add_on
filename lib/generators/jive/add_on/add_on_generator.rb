require 'rails/generators/base'
require 'jive/add_on/compatibility'

module Jive
	module AddOn
		class Generator < Rails::Generators::Base
			source_paths << File.join(File.dirname(__FILE__), 'templates')
		end
	end
end

