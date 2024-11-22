-- Seed data for theaters table
INSERT INTO theaters (name) VALUES
                                ('Theater 1'),
                                ('Theater 2'),
                                ('Theater 3'),
                                ('Theater 4'),
                                ('Theater 5'),
                                ('Theater 6'),
                                ('Theater 7'),
                                ('Theater 8'),
                                ('Theater 9'),
                                ('Theater 10');

-- Seed data for movies table
INSERT INTO movies (title, genre, duration) VALUES
                                                ('Movie 1', 'Action', 120),
                                                ('Movie 2', 'Comedy', 90),
                                                ('Movie 3', 'Drama', 110),
                                                ('Movie 4', 'Horror', 100),
                                                ('Movie 5', 'Sci-Fi', 130),
                                                ('Movie 6', 'Romance', 105),
                                                ('Movie 7', 'Thriller', 115),
                                                ('Movie 8', 'Animation', 95),
                                                ('Movie 9', 'Documentary', 85),
                                                ('Movie 10', 'Adventure', 125);

-- Seed data for showtimes table
INSERT INTO showtimes (theater_id, movie_id, showtime) VALUES
                                                           (1, 1, '2023-11-01 14:00:00'),
                                                           (2, 2, '2023-11-01 16:00:00'),
                                                           (3, 3, '2023-11-01 18:00:00'),
                                                           (4, 4, '2023-11-01 20:00:00'),
                                                           (5, 5, '2023-11-01 22:00:00'),
                                                           (6, 6, '2023-11-02 14:00:00'),
                                                           (7, 7, '2023-11-02 16:00:00'),
                                                           (8, 8, '2023-11-02 18:00:00'),
                                                           (9, 9, '2023-11-02 20:00:00'),
                                                           (10, 10, '2023-11-02 22:00:00');

-- Seed data for tickets table
INSERT INTO tickets (movie_id, showtime_id, seat_number, price) VALUES
                                                                    (1, 1, 'A1', 10.00),
                                                                    (2, 2, 'A2', 12.00),
                                                                    (3, 3, 'A3', 11.00),
                                                                    (3, 3, 'A4', 11.00),
                                                                    (3, 3, 'A4', 11.00),
                                                                    (4, 4, 'A4', 13.00),
                                                                    (5, 5, 'A5', 14.00),
                                                                    (6, 6, 'A6', 15.00),
                                                                    (7, 7, 'A7', 16.00),
                                                                    (8, 8, 'A8', 17.00),
                                                                    (9, 9, 'A9', 18.00),
                                                                    (10, 10, 'A10', 19.00),
                                                                    (10, 10, 'A11', 19.00),
                                                                    (10, 10, 'A12', 19.00),
                                                                    (10, 10, 'A13', 19.00);
