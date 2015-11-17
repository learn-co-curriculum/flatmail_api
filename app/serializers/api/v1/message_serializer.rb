class Api::V1::MessageSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :to, :from, :body, :starred, :archived
  has_one :label
end
