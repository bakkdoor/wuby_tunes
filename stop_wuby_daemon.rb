#!/usr/bin/env ruby

if File.exists? "wuby.pid"
  File.open "wuby.pid", "r" do |f|
    f.each_line do |line|
      if line.to_i != 0
        puts "killing pid #{line}"
        IO.popen("kill #{line}")
      end
    end
  end
  
  File.delete "wuby.pid"
else
  puts "Doesn't seem like a wuby-daemon is running."
end