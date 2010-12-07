$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__),'libs'))
$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__),'libs','StdLib','ironruby'))
$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__),'libs','StdLib','ruby','1.9.1'))
$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__),'libs','StdLib','ruby','site_ruby','1.9.1'))

require 'yaml'
require 'pathname'
require 'polyglot'
require 'treetop'
require 'cucumber'