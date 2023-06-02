class Record < ApplicationRecord
    validates :record_id, presence: true 
    validates :user_id, presence: true
    validates :account_id, presence: true
    validates :category_id, presence: true 
    validates :name, presence: true
    validates :record_type_id, presence: true
    validates :amount, presence: true
    validates :date , presence: true

end
