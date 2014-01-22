Redmine::Plugin.register :redmine_account_text do
  name 'Redmine Account Text plugin'
  author 'Clemens Bergmann'
  description 'This plugin show a text on the account page'
  version '0.0.1'
  url 'https://github.com/proventa/redmine_account_text'
  author_url 'http://proventa.de'

  settings :default => {
	'account_text' => "Please configure the text in the redmine account text plugin settings.",
	'account_text_label' => "Additional information"
	},
	:partial => 'account_text/settings'

  require_dependency 'account_text_hooks'
end
