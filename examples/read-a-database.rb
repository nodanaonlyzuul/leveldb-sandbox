# frozen_string_literal: true

require 'snappy'
require 'leveldb'
require 'securerandom'

## make a new database
db = LevelDB::DB.new(File.join(File.dirname(__FILE__), '..', 'data-dir', 'million-key-database'))

puts "The database has #{db.size} keys. Wrote a song about, like to hear it? Here it goes."

db.each do |key, value|
  puts "#{key} = #{value}"
end
