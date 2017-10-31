
# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

module Matchers
  class BeLike
    def initialize(expected)
      @expected = expected.gsub(/^\s+/, '').strip
    end

    def matches?(actual)
      @actual = actual.gsub(/^\s+/, '').strip
      @expected == @actual
    end

    def failure_message
      "expected\n#{@actual}\nto be like\n#{@expected}"
    end

    def negative_failure_message
      "expected\n#{@actual}\nto be unlike\n#{@expected}"
    end
  end

  def be_like(expected)
    BeLike.new(expected)
  end
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  include Matchers
end

class << RSpec::Core::ExampleGroup
  alias isalaysay_ang describe
  RSpec::Core::ExampleGroup.define_example_group_method :isalaysay_ang
  RSpec::Core::ExampleGroup.define_example_method :ito_ang
end

RSpec::Core::MemoizedHelpers::ClassMethods.module_eval do
  alias_method :italaga_ang, :let
end

RSpec::Core::MemoizedHelpers.module_eval do
  alias_method :dapat, :should
end

require 'bato/tagatala'
