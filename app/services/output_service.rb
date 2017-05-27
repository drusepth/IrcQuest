class OutputService < Service
  def self.log message
    puts "[LOG  ] #{message}"
  end

  def self.info message
    puts "[INFO ] #{message}"
  end

  def self.error message
    puts "[ERROR] #{message}"
  end

  def self.debug message
    puts "[DEBUG] #{message}"
  end

  #TODO: also write all these to log/log, log/info, log/error, etc
end