module Jive
	module AddOn
		class Model < ActiveRecord::Base
			self.table_name = :jive_add_ons
			validate :validate_registration

			private
				def validate_registration
					if !::Jive::SignedRequest.validate_registration({
							clientId: self.client_id,
							tenantId: self.tenant_id,
							jiveSignatureURL: self.jive_signature_url,
							clientSecret: self.client_secret,
							jiveSignature: self.jive_signature,
							jiveUrl: self.jive_url,
							timestamp: self.timestamp,
						})
						errors.add(:base, "INVALID_JIVE_SIGNATURE")
					end
				end
		end
	end
end
