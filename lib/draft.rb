class Draft < ActiveRecord::Base
    belongs_to :team
    belongs_to :fighter
end