CarrierWave.configure do |config|
  config.sftp_host    = ENV['sftp_host']
  config.sftp_user    = ENV['sftp_user']
  config.sftp_folder  = ENV['sftp_folder']
  config.sftp_url     = ENV['sftp_url']
  config.sftp_options = {
    password: ENV['sftp_password'],
    port:     ENV['sftp_port']
  }

  #config.ftp_host = ENV['ftp_host']
  #config.ftp_port = ENV['ftp_port']
  #config.ftp_user = ENV['ftp_user']
  #config.ftp_passwd = ENV['ftp_passwd']
  #config.ftp_folder = ENV['ftp_folder']
  #config.ftp_url = ENV['ftp_url']
  #config.passive = false # false by default
end