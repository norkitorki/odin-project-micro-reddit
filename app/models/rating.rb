class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true
  def format_rating
    rating = value.to_i
    rating >= 1000 ? "#{(rating / 1000.0).round(1).to_s.sub('.0', '')}k" : rating.to_s
  end
end
