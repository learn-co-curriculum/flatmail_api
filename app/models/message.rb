class Message < ActiveRecord::Base
  belongs_to :label

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
    where(archived: false)
  end
end
