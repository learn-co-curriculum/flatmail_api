class Api::V1::Message < ActiveRecord::Base
  belongs_to :label, foreign_key: :api_v1_label_id
end
