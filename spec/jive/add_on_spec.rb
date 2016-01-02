require 'spec_helper'

describe Jive::AddOn do
	it 'has a version number' do
		expect(Jive::AddOn::VERSION).not_to be nil
	end

	describe "#save" do
		it 'should save when signature is valid' do
			add_on = ::Jive::AddOn::Model.new({
				client_id: '2zm4rzr9aiuvd4zhhg8kyfep229p2gce.i',
				tenant_id: 'b22e3911-28ef-480c-ae3b-ca791ba86952',
				jive_signature_url: 'https://market.apps.jivesoftware.com/appsmarket/services/rest/jive/instance/validation/8ce5c231-fab8-46b1-b8b2-fc65deccbb5d',
				client_secret: 'evaqjrbfyu70jlvnap8fhnj2h5mr4vus.s',
				jive_signature: '0YqbK1nW+L+j3ppE7PHo3CvM/pNyHIDbNwYYvkKJGXU=',
				jive_url: 'https://sandbox.jiveon.com',
				timestamp: '2015-11-20T16:04:55.895+0000',
			})
			expect(add_on.save).to eq(true)
		end

		it 'should not save when signature is invalid' do
			add_on = ::Jive::AddOn::Model.new({
				client_id: '2zm4rzr9aiuvd4zhhg8kyfep229p2gce.i',
				tenant_id: 'b22e3911-28ef-480c-ae3b-ca791ba86952',
				jive_signature_url: 'https://market.apps.jivesoftware.com/appsmarket/services/rest/jive/instance/validation/8ce5c231-fab8-46b1-b8b2-fc65deccbb5d',
				client_secret: 'evaqjrbfyu70jlvnap8fhnj2h5mr4vus.s',
				jive_signature: '0YqbK1nW+L+j3ppE7PHo3CvM/pNyHIDbNwYYvkKJGXU=-invalid',
				jive_url: 'https://sandbox.jiveon.com',
				timestamp: '2015-11-20T16:04:55.895+0000',
			})
			expect(add_on.save).to eq(false)
		end
	end
end
