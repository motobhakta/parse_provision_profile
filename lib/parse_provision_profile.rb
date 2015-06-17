require "parse_provision_profile/version"
require "openssl"
require "rexml/document"
require "getoptlong"
require 'plist'
require 'colorize'

module ParseProvisionProfile

	class Entitlement
		def self.get(path)
			data = Entitlement.parse_provisioning_proflie(path)
		end

		def self.parse_provisioning_proflie(path)
		  	signed_data=File.read(path)

			pkcs7 = OpenSSL::PKCS7.new(signed_data)
			store = OpenSSL::X509::Store.new
			flags = OpenSSL::PKCS7::NOVERIFY
			pkcs7.verify([], store, nil, flags)

		  	r = Plist::parse_xml(pkcs7.data)
		  	return r
		end
	end
end
