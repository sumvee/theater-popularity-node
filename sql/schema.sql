CREATE TABLE theaters (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(255) NOT NULL
);

CREATE TABLE movies (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        title VARCHAR(255) NOT NULL,
                        genre VARCHAR(100),
                        duration INT
);

CREATE TABLE showtimes (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           theater_id INT,
                           movie_id INT,
                           showtime DATETIME,
                           FOREIGN KEY (theater_id) REFERENCES theaters(id),
                           FOREIGN KEY (movie_id) REFERENCES movies(id)
);

CREATE TABLE tickets (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         movie_id INT,
                         showtime_id INT,
                         seat_number VARCHAR(10),
                         price DECIMAL(10, 2),
                         FOREIGN KEY (movie_id) REFERENCES movies(id),
                         FOREIGN KEY (showtime_id) REFERENCES showtimes(id)
);
