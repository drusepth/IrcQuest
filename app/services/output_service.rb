class OutputService < Service
  def log message
    puts "[LOG  ] #{message}"
  end

  def info message
    puts "[INFO ] #{message}"
  end

  def error message
    puts "[ERROR] #{message}"
  end

  def debug message
    puts "[DEBUG] #{message}"
  end

  #TODO: also write all these to log/log, log/info, log/error, etc
end