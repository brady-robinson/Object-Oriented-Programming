require 'date'

class SecretFile
  def initialize(secret_data)
    @data = secret_data
    @date_of_access = []
  end

  def print_data
    puts @data
    @date_of_access << SecurityLogger.create_log_entry
  end

  def entry_log
    @date_of_access
  end 
end

class SecurityLogger
  def self.create_log_entry
    "Data accessed on #{Date.today}."
  end
end

access_june = SecretFile.new("Files")
access_june.print_data
access_june.print_data
puts access_june.entry_log