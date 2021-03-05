SELECT t.Tournamentid, t.Description   , c.courseid,  c.Description, r.Description,  p.playerid, p.firstname, p.lastname, s.* FROM golf.players p
inner join score s on s.playerid = p.playerid
inner join tournament t on t.Tournamentid = s.Tournamentid
inner join course c on c.courseid = s.courseid
inner join rounds r on r.roundid = s.roundid

