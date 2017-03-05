FactoryGirl.define do
  factory :event do
    user
    name 		{ FFaker::Name.name}
    description { FFaker::DizzleIpsum.paragraph }
	date		{ Time.zone.now }
    start_time 	{ Time.now }
    end_time	{ Time.now + 1.hour }
  end
end
