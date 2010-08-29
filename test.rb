require 'wrong'
$:.unshift File.join(File.dirname(__FILE__), 'lib/')
require 'memoized_accessor'

include Wrong::Assert

class Magic
  memoized_accessor(:michelle) { 4 + 4 }
end

m = Magic.new
assert { m.michelle == 8 }

m.michelle=10
assert { m.michelle == 10 }

assert { m.michelle! == 8}

assert { m.michelle == 10 }

