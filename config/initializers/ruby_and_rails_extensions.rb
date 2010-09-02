Dir["#{Rails.root}/lib/ruby_and_rails_extensions/*.rb"].each do |extension_file|
  require extension_file
end