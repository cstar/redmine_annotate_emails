class PopulateCustomFields < ActiveRecord::Migration
    def self.up
        IssueCustomField.create :is_for_all => true, :name => "sender_email", :field_format => "string", :searchable => true, :is_filter =>true
    end
    def self.down
    end
end