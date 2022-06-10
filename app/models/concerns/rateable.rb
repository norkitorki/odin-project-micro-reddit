module Rateable
  extend ActiveSupport::Concern

  def format_rating
    rating = self.rating || 0
    rating >= 1000 ? "#{(rating / 1000.0).round(1)}k" : rating.to_s
  end
end
