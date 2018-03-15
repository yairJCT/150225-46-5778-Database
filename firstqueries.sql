

//some details of clients which live in area 2
select clientid , clientname, phonenr ,cityname 
from goldmosh.client C ,goldmosh.agent A 
where  A. AGENTID = C.AGENTID and A.AREAID=2;



//some details of clients which live in tel aviv
select clientid , clientname, phonenr ,cityname 
from goldmosh.client C
where  C.CITYNAME= 'Tel Aviv'

//pairs of clients and agents which live in the same area 
select clientid , clientname ,A.agentid,A.agentname
from goldmosh.client C ,goldmosh.agent A ,goldmosh.area T,goldmosh.city ci
where c.cityname= ci.cityname and T.AREAID = A.AREAID 

//all of the meetings of agent Yaacov Levy
select meetingtime from goldmosh.schedule s , goldmosh.agent a
where a.agentname='Yaacov Levy' and a.agentid=s.agentid

//all of the meetings of client Gabriel BarAsher
select meetingtime from goldmosh.schedule s , goldmosh.client c
where c.clientname='Gabriel BarAsher'and c.clientid=s.clientid