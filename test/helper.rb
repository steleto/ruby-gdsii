# Tests must be invoked with the user's working directory
# being the directory above "test" and "lib".

# Put things in here that are needed for all tests_*.rb files.
require 'simplecov'

# Setup code coverage for tests
if ENV['COVERAGE']
  if ! defined?($SimpleCovStarted)
    $SimpleCovStarted = 1
    SimpleCov.start do
      add_filter 'test/'
    end
  end
end

require 'test/unit'
