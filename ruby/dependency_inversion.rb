class Backup
  def save_data(service, object)
    service.new.call(object)
  end
end

class S3Backup
  def call(object)
    p "backuping data to AWS, content; #{object}"
  end
end

class GCSBackup
  def call(object)
    p "backuping data to GCS, content; #{object}"
  end
end
