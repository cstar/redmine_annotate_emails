require 'redmine'
require 'annotate_emails_patch'
Redmine::Plugin.register :redmine_annotate_emails do
  name 'Redmine Annotate Emails plugin'
  author 'Eric Cestari'
  description 'Adds emails in custom field attached to tickets.'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://cestari.info/'
end
