# Email settings
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => ENV['smtp_server'],
	:port => ENV['smtp_port']
}
