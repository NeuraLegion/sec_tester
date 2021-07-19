require "log"
require "./process_handler.cr"
require "./test.cr"

module SecTester
  Log     = ::Log.for("SecTester")
  VERSION = "0.1.0"

  backend = ::Log::IOBackend.new(STDOUT)

  ::Log.setup do |c|
    c.bind("SecTester.*", ::Log::Severity::Debug, backend)
  end

  # Not the most beautiful way to do this, but it works.
  class Error < Exception; end
end
