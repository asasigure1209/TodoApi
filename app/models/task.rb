class Task < ApplicationRecord
    validates :title, {presence: true}
    validates :order, {presence: true, uniqueness: true}
end
