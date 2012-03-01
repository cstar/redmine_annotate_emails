#annotate
require_dependency 'mail_handler'
module MailHandlerPatch
	def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      alias_method_chain :receive_issue, :email
    end
  end
  module InstanceMethods
		def receive_issue_with_email
  		issue = receive_issue_without_email
  		sender_email = email.from.to_a.first.to_s.strip
  		if f = issue.project.all_issue_custom_fields.find { |f| f.name == "sender_email" }
  			issue.custom_field_values = {f.id => sender_email}
				issue.save!
			end
  		issue
  	end
  end
end

MailHandler.send(:include, MailHandlerPatch)