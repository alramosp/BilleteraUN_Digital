class RecordType < ApplicationRecord
    validates :name, presence: true
    validates :r_type, presence: true
  
end
