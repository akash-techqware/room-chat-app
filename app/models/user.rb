class User < ApplicationRecord
	validates_uniqueness_of :username

	def self.generate
		adjectives = ['Ancient', 'Broken', 'Flying', 'Guilded']
		nouns = ['Highway', 'Intern', 'Jackhammer', 'Lion', 'Master']
		number = rand.to_s[2..4]
		username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
		create(username: username)
	end

end
