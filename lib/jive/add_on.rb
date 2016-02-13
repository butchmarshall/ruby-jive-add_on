require "active_support"
require "active_support/dependencies"
require "active_record"

require "jive/signed_request"

require "jive/add_on/version"
require "jive/add_on/compatibility"
require "jive/add_on/class_methods"
require "jive/add_on/instance_methods"

module Jive
	class AddOn < ActiveRecord::Base
	end
end

Jive::AddOn.send :include, Jive::AddOn::InstanceMethods
Jive::AddOn.send :extend, Jive::AddOn::ClassMethods