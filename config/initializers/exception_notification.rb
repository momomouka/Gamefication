require 'exception_notification/rails'

ExceptionNotification.configure do |config|
  # Ignore additional exception types.
  # ActiveRecord::RecordNotFound, AbstractController::ActionNotFound and ActionController::RoutingError are already added.
  # config.ignored_exceptions += %w{ActionView::TemplateError CustomError}
  config.ignored_exceptions = %w{} # 効いてるかな？

  # Adds a condition to decide when an exception must be ignored or not.
  # The ignore_if method can be invoked multiple times to add extra conditions.
  config.ignore_if do |exception, options|
    not Rails.env.production?
  end

  # Notifiers =================================================================

  # Email notifier sends notifications by email.
  config.add_notifier :email, {
    email_prefix:         "[ERROR_MODE] ",
    sender_address:       %{"Error Notification" <dev@example.com>},
    exception_recipients: %w{kaiho.okalab2017@gmail.com}
  }

end
