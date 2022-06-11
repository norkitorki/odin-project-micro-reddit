module Rateable
  extend ActiveSupport::Concern

  def format_rating(rating)
    rating = rating.to_i
    rating >= 1000 ? "#{(rating / 1000.0).round(1).to_s.sub('.0', '')}k" : rating.to_s
  end
end
