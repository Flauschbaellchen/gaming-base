require 'fileutils'
require 'open-uri'
require 'zip'
require 'mini_magick'

module UpdateHelper
  if defined?(Rails)
    require 'engine'
  end
end

def log(log_line="")
  @last_log_line ||= ""
  
  if @last_log_line["\r"]
    print "\r" + " " * @last_log_line.length + "\r"
  else
    print "\n"
  end

  @last_log_line = Time.now.strftime("%d.%m.%Y/%H:%M:%S [#{self.class.name}] ").light_black + log_line
  print @last_log_line
  STDOUT.flush
end

def debug(s)
  log s.light_black
end

def error(s)
  log s.red
end