class Api::V1::Message < ActiveRecord::Base
  belongs_to :label, foreign_key: :api_v1_label_id

  def self.from_query(query)
    return all unless ["starred", "archived", "inbox"].include?(query)
    public_send(query)
  end

  def self.starred
    where(starred: true)
  end

  def self.archived
    where(archived: true)
  end

  def self.inbox
    archived.not
  end
end
