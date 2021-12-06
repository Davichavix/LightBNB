SELECT properties.*, reservations.*, avg(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE property_reviews.guest_id = 1
AND end_date < NOW()
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;