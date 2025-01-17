module ApplicationHelper
    # Converts a numeric rating into emoji stars (out of 5)
  # @param rating [Float, Integer] The rating to convert (e.g., 3.5, 4, etc.)
  # @return [String] A string of emoji stars
  def rating_to_stars(rating)
    # Clamp the rating between 0 and 5 to handle edge cases
    rating = [[rating, 0].max, 5].min

    # Calculate full stars, half stars, and empty stars
    full_stars = rating.floor

    # Build the emoji star string
    "⭐" * full_stars
  end
end
