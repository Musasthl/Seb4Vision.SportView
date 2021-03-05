SELECT p.PlayerId, r.RoundId,r.description as Round,  p.FirstName, p.LastName  
, sum(st.strokes) as TotalStrokes, sum(ch.par) as TotalPar,
 sum(st.strokes) - sum(ch.par) as RoundScore
 FROM golf.players p
join golf.score sc on sc.playerid = p.playerid
join golf.shots st on st.idscore = sc.idscore and st.holestatus = 2
join golf.rounds r on r.roundid = sc.roundid
join golf.courseholes ch on ch.idcourseholes = st.holeid
group by p.playerid, p.firstname, p.lastname, r.roundid
order by r.Description, RoundScore 