# frozen_string_literal: true

require 'snappy'
require 'leveldb'
require 'securerandom'

## make a new database
db = LevelDB::DB.new(File.join(File.dirname(__FILE__), '..', 'data-dir', 'million-key-database'))

puts "creating a database with 1,000,000 keys"
(1..1000000).each do |number|
  db.put(number.to_s, SecureRandom.uuid)
end
puts "Done"
