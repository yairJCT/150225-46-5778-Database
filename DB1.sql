
== DB1 Database Schema 

create table area(areaId numeric(3) primary key,
                  areaName varchar(20));

create table agent(agentID    numeric(9) primary key,   
                   agentName  varchar(20), 
				   areaID     numeric(3) references dbo.area, 
				   Rating     numeric(2), 
				   HireYear   numeric(4), 
				   bossID     numeric(9), 
				   salary     float);

create table client(clientID    numeric(9) primary key, 
                    clientName  varchar(20), 
					agentID     numeric(9) references dbo.agent, 
					phoneNr     varchar(10), 
					Address     varchar(25), 
					cityName    varchar(20));
					
create table city(cityName  varchar(20) primary key,
                  areaId    numeric(3) references dbo.area);	

create table schedule(agentId  numeric(9),
                      clientId numeric(9),
                      meetingTime datetime,
					  primary key (agentId, clientId, meetingTime),
					  foreign key (agentId) references dbo.agent,
					  foreign key (clientId) references dbo.client);
					  