SELECT t.id, t.name, COUNT(tc.id) AS ticket_count
FROM theaters t
         JOIN showtimes s ON t.id = s.theater_id
         JOIN tickets tc ON s.id = tc.showtime_id

GROUP BY t.id, t.name
# ORDER BY ticket_count DESC;
ORDER BY ticket_count DESC LIMIT 1;


SELECT Date(s.showtime) AS date
FROM showtimes s
GROUP BY date;
