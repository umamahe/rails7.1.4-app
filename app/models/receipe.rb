class Receipe < ApplicationRecord
    validates  :title,:body, presence: true
end
