#--
# Copyright (C)2008 Ilya Grigorik
# You can redistribute this under the terms of the Ruby license
# See file LICENSE for details
#++

require 'eventmachine'

case RUBY_PLATFORM
  when /java/
    require File.dirname(__FILE__) +'/jruby/em_buffer'
  else
    require File.dirname(__FILE__) + '/em_buffer'
end

require File.dirname(__FILE__) + '/http11_client'
require File.dirname(__FILE__) + '/em-http/core_ext/hash'
require File.dirname(__FILE__) + '/em-http/client'
require File.dirname(__FILE__) + '/em-http/multi'
require File.dirname(__FILE__) + '/em-http/request'
require File.dirname(__FILE__) + '/em-http/decoders'
