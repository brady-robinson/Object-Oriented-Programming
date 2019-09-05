class SecretFile
  def initialize(secret_data, security_log)
    @sec_log = security_log
    @data = secret_data
  end

  def data
    puts @sec_log.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry
    "Data accessed"
  end
end

new_file = SecretFile.new(1, SecurityLogger.new)
p new_file.data
p new_file.data
p new_file.data
