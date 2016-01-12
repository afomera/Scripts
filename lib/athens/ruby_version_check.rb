if RUBY_VERSION < '2.2.3' && RUBY_ENGINE == 'ruby'
  desc = defined?(RUBY_DESCRIPTION) ? RUBY_DESCRIPTION : "ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE})"
  # Abort the script if they're not running 2.2.3 or higher of Ruby
  abort <<-end_message
    The scripts require Ruby 2.2.3 or higher
    You're running
      #{desc}
    Please upgrade to Ruby 2.2.3 or newer to continue. Preferably 2.3.0 if possible.
  end_message
end
