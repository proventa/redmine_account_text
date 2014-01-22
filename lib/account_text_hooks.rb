module AccountTextPlugin
  module Hooks
    class LayoutHook < Redmine::Hook::ViewListener
      def view_my_account(context={ })
          return %{
	      <p>
                <label>#{Setting.plugin_redmine_account_text['account_text_label']}</label>
                #{textilizable Setting.plugin_redmine_account_text['account_text']}
              </p>
          }
      end
    end
  end
end
