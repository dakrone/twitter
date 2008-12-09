#!/usr/bin/env ruby

require 'twitter'

puts '', "Friends Timeline", "=" * 50
Twitter::Base.new('<username>', '<password>', :ssl => true).timeline.each do |s|
      puts s.text, s.user.name
      puts
end

