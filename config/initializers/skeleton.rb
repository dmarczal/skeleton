abort "Rename all Skeleton references to your own app name" if Rails.application.class.name =~ /Skeleton/
abort "Rename the session key on config/initializers/session_store.rb" if Rails.configuration.session_options[:key] =~ /^_skeleton/
abort "Generate a new secret token with `rake secret` and replace it on config/initializers/secret_token.rb" if Rails.configuration.secret_token =~ /change_me/
abort "Remove this file: #{__FILE__}"
