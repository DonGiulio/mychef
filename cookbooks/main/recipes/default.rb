package "git-core"

# gem install rake rspec extlib systemu json

node[:user].each do |name, val|
  # puts val.to_yaml
  user val[:name] do
    password val[:password]
    gid val[:name]
    home "/home/#{val[:name]}"
    supports manage_home: true
  end
end