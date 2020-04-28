class Reply < ApplicationRecord
    belongs_to :tweeet
    belongs_to :user
end
