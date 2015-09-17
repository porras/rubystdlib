require 'set'

BLACKLISTED_IPS = Set.new %w(
  42.100.119.12
  61.103.82.121
  86.26.59.70
  114.28.117.113
  79.45.68.85
)

def blacklisted?(ip)
  BLACKLISTED_IPS.include?(ip)
end

p blacklisted?('79.45.68.85')
p blacklisted?('79.45.68.86')
