Dir[File.join(Rails.root, 'lib', '*.rb')].sort.each { |patch| require(patch) }