import mysql from 'mysql';
import conn from './db.js';

function getTopTheater(date, callback) {

  conn.connect(function(err) {
    if (err) throw err;
    console.log('Connected!');

    const dates = `
      SELECT Date(s.showtime) AS date
      FROM showtimes s 
      GROUP BY date
    `;

    const query = `
      SELECT t.id, t.name, COUNT(tc.id) AS ticket_count
      FROM theaters t
      JOIN showtimes s ON t.id = s.theater_id
      JOIN tickets tc ON s.id = tc.showtime_id
      WHERE DATE(s.showtime) = '${date}'
      GROUP BY t.id, t.name
      ORDER BY ticket_count DESC
      LIMIT 1;
    `;

    const formattedQuery = mysql.format(query, [date]);

    conn.query(formattedQuery, dates, function(err, result) {
      if (err) throw err;
      if (result.length === 0) {
        console.log('No data found for date:', date);
        conn.query(dates, function(err, result) {
          if (err) throw err;
          console.log('Available dates are:');
          console.log(result);
          conn.end();
          process.exit(1);
        });
      }
      callback(result);
      conn.end();
    });
  });
}

export default getTopTheater;
