**Background and Overview**

This project is based on the ‘Network demand’ open data published by the TfL website. To support the collection, investigation, analysis, and visualisation of data, tools including Excel, SQL and Tableau were used. 

The aim of this project was to explore trends and patterns in TfL footfall data, comparing variables such as stations, day of the week, and zones. This helped answer a set of stakeholder-driven questions aimed at understanding passenger behaviour and optimising performance across the network. 

_Stakeholder Driven Questions:_

•	Which stations had the most/least footfall? 

•	Which zones generate the most footfall? 

•	Which days of the week are the busiest? 

•	Which dates in the year are busiest? 

•	Which stations are busiest on peak days? 

•	How has footfall changed over the year? 

•	Which stations are underperforming? 


**Data Structure Review**

The original data was presented in a CSV data file updated weekly, containing information from 01/01/2024 to 02/08/2025. To enable efficient analysis: 

•	The data was cleaned and restructured in Excel 

•	It was then imported into a MySQL database 

•	Finally, SQL was used to establish relationships between tables    

To access the Excel file, refer to **station_footfall_project.xlsx** in my repository. 

To access the MySQL file, refer to **station_footfall.sql** in my repository. 

_Entity Relationship Diagram:_

The entity relationship diagram (ERD) below outlines the data’s structure, including information about data types and the relationship between tables. 

 <img width="492" height="325" alt="• Exit_Tap_Count INT" src="https://github.com/user-attachments/assets/fb680b98-3471-4efd-aff2-6e4a52bfdd48" />


**Executive Summary**

_Overview of Findings_ 

Significant variations in footfall were observed across: 

•	Zones 

•	Time Periods 

•	Individual Stations 


_Key Observations_

•	Weekdays (especially Tuesday-Thursday) typically had the highest footfall. 

•	Saturdays were peak days for many Zone 1 &2 stations, often having higher footfall than some weekdays, such as Monday. 

•	King’s Cross St Pancras was consistently the busiest station on every day of the week. 

•	Zone 1 stations recorded significantly higher footfall than other zones. 

•	Notably lower footfall was observed amongst Zones 4, 6, and Beyond. 

•	Stations in 2025 experienced slightly higher footfall across most months than in 2024. (An absence of data for the remaining months of 2025 limits analysis of the full-year trend.)

•	Footfall dipped in August 2024 and peaked in October 2024. 

•	October was consistently the busiest month, with January and December typically recording the lowest monthly footfalls. 

•	The highest footfall recorded on individual dates was found in late November and December. 


 <img width="1998" height="1598" alt="Stations Footfall 202425" src="https://github.com/user-attachments/assets/07c70178-e1d2-48d0-8036-9b671cf44d7c" />


To access the interactive Tableau dashboard, **click here** - https://public.tableau.com/app/profile/teanna.ottey/viz/StationsFootfall20242025/StationsFootfall202425. 

**Insights Deep Dive**

_Which stations had the most/least footfall?_

Most: 

 <img width="326" height="199" alt="Highest Station Footfall 2024" src="https://github.com/user-attachments/assets/62b6db17-2a1b-4cdf-83b0-a91c67d06d22" />


<ins>Kings Cross St Pancras</ins>

Footfall by Month: 

•	Kings Cross St Pancras had the highest footfall in 2024, with the highest monthly value recorded in October (6,976,779) and the lowest in January (5,570,999). 

•	Footfall dipped in September, with a monthly value of 6,246,734. 

 <img width="488" height="278" alt="January" src="https://github.com/user-attachments/assets/1d7434c7-e761-4194-9394-14e7295c2682" />


Average Footfall by Day: 

•	Thursday (233,385), Friday (226,919), and Saturday (222,156) are King’s Cross St Pancras’ busiest days of the week, by average footfall per day. 

 <img width="292" height="457" alt="Footfall" src="https://github.com/user-attachments/assets/ddc3fa19-0f13-4b91-9303-abe09de6044f" />


<ins>Victoria<ins>

Footfall by Month: 

•	In 2024, Victoria recorded the highest monthly value in October (5,627,754) and the lowest in January (4,678,773). 

<img width="490" height="277" alt="Footfall" src="https://github.com/user-attachments/assets/243b392b-5120-4466-9623-e8e060d69571" />

Average Footfall by Day: 

•	Thursday (200,747), Wednesday (191,371), and Tuesday (184,343) were Victoria’s busiest days of the week, by average footfall per day. 

•	Footfall was significantly lower on Sunday (125,557).

 <img width="294" height="456" alt="Tuesday" src="https://github.com/user-attachments/assets/04d80fcf-9f9b-4439-a319-dba976579ada" />


<ins>Waterloo<ins>

Footfall by Month: 

•	In 2024, Waterloo experienced the most footfall in October (5,995,185) and the lowest in January (4,489,585).  

•	Footfall peaked in July (5,712,419) and dipped in August (5,077,796), before peaking again in October. 

 <img width="496" height="276" alt="Footfall" src="https://github.com/user-attachments/assets/01e1a535-1b72-4459-b6b6-e712b6db62f8" />


Footfall by Day: 

•	Waterloo’s busiest days in 2024 were Thursday (209,583), Wednesday (202,517), and Tuesday (189,236), by average footfall per day. 

•	Average footfall on Sundays was significantly lower, valued at 107,476. 

 <img width="296" height="455" alt="Tuesday" src="https://github.com/user-attachments/assets/fab00f53-1d73-47b8-bd36-ca53ef10b1d8" />


<ins>Tottenham Court Road<ins> 

Footfall By Month: 

•	In 2024, Tottenham Court Road’s highest monthly footfall was recorded in October (5,641,661), and the lowest in January (4,487,595). 

•	Footfall dipped in September (4,835,015), before peaking in October. 

 <img width="481" height="273" alt="Footfall" src="https://github.com/user-attachments/assets/d30d2d3c-a169-4b16-b8c2-a0912b6a4cdb" />


Average Footfall by Day: 

•	Saturday (191,673), Thursday (191,253), and Wednesday (179,795) were Tottenham Court Road’s busiest days by average footfall per day. 

•	Average footfall per day was significantly lower on Sunday (111,354). 

 <img width="289" height="458" alt="Thursday" src="https://github.com/user-attachments/assets/fdd572e5-4aa5-4032-9712-8f0292b52be2" />


<ins>Liverpool Street<ins>

Footfall By Month: 

•	In 2024, Liverpool Street recorded the highest monthly footfall in October (5,557,864) and the lowest in December (4,645,043). 

•	Footfall slightly peaked in July (5,145,031) and dipped in August (4,696,274) before peaking in October. 

 <img width="498" height="277" alt="Footfall" src="https://github.com/user-attachments/assets/64327300-3900-4c4b-9e89-ef9664dac878" />


Average Footfall by Day: 

•	Liverpool Street’s busiest days were Thursday (207,903), Wednesday (193,863) and Tuesday (187,639). 

•	Weekends experienced lower footfall, with significantly lower footfall on Sundays (92,382).

 <img width="293" height="450" alt="Footfall" src="https://github.com/user-attachments/assets/dede190e-088e-4017-bbff-aeeca6ea64cb" />


Least: 
 
<img width="280" height="228" alt="Lowest Station Footfall 2024" src="https://github.com/user-attachments/assets/5ddce525-ec19-4a4d-9377-300fa31a3c16" />


<ins>Roding Valley<ins> 

Footfall By Month: 

•	In 2024, Roding Valley recorded the highest monthly footfall in October (15,386) and the lowest in February (10,760).

•	Roding Valley experienced several dips in footfall in February, April (11,432), and August (11,980). 

 <img width="487" height="273" alt="Footfall" src="https://github.com/user-attachments/assets/d8388091-5b44-4cd8-9988-08eb8c9c5fec" />


Average Footfall by Day: 

•	Roding Valley’s busiest days were Wednesday (554), Thursday (531), and Tuesday (511), by average footfall by day. 

•	Weekends generally experienced lower footfall, with significantly lower footfall recorded on Sundays (210). 

 <img width="288" height="447" alt="Average Footfall by Day" src="https://github.com/user-attachments/assets/c2414137-41f4-4ee3-b251-85d559bb15b5" />


<ins>Iver<ins>

Footfall By Month: 

•	In 2024, Iver recorded the highest monthly footfall in October (19,422) and the lowest in January (14,281). 

•	Footfall dipped in August (17,296) before peaking in October and dipping again in December (16,138). 

 <img width="492" height="268" alt="Footfall" src="https://github.com/user-attachments/assets/7895dbd5-ea18-49f1-a938-b8ac7fb48bf1" />


Average Footfall by Day: 

•	Thursday (698), Wednesday (665), and Tuesday (639) were Iver’s busiest days in 2024, by average footfall per day. 

•	Weekends generally experienced lower footfall, with significantly lower footfall recorded on Sundays (303). 

 <img width="291" height="449" alt="Tuesday" src="https://github.com/user-attachments/assets/b8a96658-e7f5-4b1a-ad09-f6f4a34a18a6" />


<ins>Emerson Park<ins>  

Footfall By Month: 

•	In 2024, Emerson Park experienced the highest monthly footfall in October (18,993) and the lowest in February (15,166). 

•	Footfall dipped in several months before peaking in the consecutive month. 

 <img width="495" height="271" alt="Footfall" src="https://github.com/user-attachments/assets/44b80043-2e63-41aa-8086-b62d102e2c87" />


Average Footfall by Day: 

•	Emerson Park’s busiest days by average footfall per day were Wednesday (756), Thursday (751), and Tuesday (737). 

•	Weekends generally experienced lower footfall, with significantly lower footfall recorded on Sunday (183). 

 <img width="296" height="449" alt="Tuesday" src="https://github.com/user-attachments/assets/1b02377c-1fbf-42e4-8f81-f244252a72bc" />


<ins>Taplow<ins>  

Footfall By Month: 

•	In 2024, Taplow experienced the highest monthly footfall in October (20,017) and the lowest in January (15,279). 

•	Footfall dipped in August (17,219), before peaking in October. Footfall also dipped in December, with a monthly footfall of 16,518. 

 <img width="484" height="268" alt="Footfall" src="https://github.com/user-attachments/assets/a274d8c9-08ed-4169-af62-11b29f75a436" />


Average Footfall by Day: 

•	Taplow’s busiest days by average footfall per day were Thursday (699), Wednesday (687), and Tuesday (668). 

•	Weekends generally experienced lower footfall, with significantly lower footfall recorded on Sunday (385). 

 <img width="293" height="451" alt="Tuesday" src="https://github.com/user-attachments/assets/18b6b515-a5a8-45b3-92b5-ba3dbea530d8" />


<ins>Chigwell<ins> 

Footfall By Month: 

•	In 2024, Chigwell experienced the highest monthly footfall in October (27,946) and the lowest in December (21,975). 

•	Footfall dipped in several months, including February (22,813), April (22,941), and August (20,589), before peaking in the consecutive months. 

 <img width="485" height="266" alt="Footfall" src="https://github.com/user-attachments/assets/c3e5a946-4a4c-49e5-86d8-4c2b4d12fc1b" />


Average Footfall by Day: 

•	Chigwell’s busiest days by average footfall per day were Thursday (1,050), Tuesday (1,035), and Wednesday (1,029). 

•	Weekends generally experienced lower footfall, with significantly lower footfall recorded on Sunday (387). 

 <img width="295" height="454" alt="Thursday" src="https://github.com/user-attachments/assets/879c5d63-31d6-4ae0-8bbb-e4381588925e" />


_Which zones generate the most footfall?_

Footfall across Zones in 2024: 

•	Zone 1 (1.2bn), Zone 2 (591.5m), Zone 3 (287.3m), and Zone 4 (226.4m) had the highest recorded footfall in 2024. 

 <img width="498" height="271" alt="Zone 10" src="https://github.com/user-attachments/assets/2c67c1ea-4082-4a0e-bd61-0e692a620fdd" />


<ins>Zone 1<ins> 

Footfall By Month: 

•	In 2024, Zone 1 experienced the highest monthly footfall in October (113.4m) and the lowest in December (92.5m). 

•	Footfall dipped in August (97.4m), before peaking in October. 

 <img width="485" height="271" alt="January" src="https://github.com/user-attachments/assets/774b4fe1-c383-4da8-8bf1-8b7bfa1acb4c" />


Average Footfall by Day: 

•	Zone 1’s busiest days by average footfall per day were Thursday (60,561), Wednesday (58,445), and Tuesday (56,263). 

•	Average footfall by day was significantly lower on Sunday (33,441). 

 <img width="288" height="452" alt="Average Footfall by Day" src="https://github.com/user-attachments/assets/bb29c964-a060-48c7-8b97-b7abac945d6f" />


<ins>Zone 2<ins> 

Footfall By Month: 

•	In 2024, Zone 2 recorded the highest monthly footfall in October (54.4m) and the lowest in August (46.4m). 

•	Footfall dipped in August before peaking in October and again in December (46.3m). 

 <img width="491" height="276" alt="Footfall" src="https://github.com/user-attachments/assets/8da132c5-70de-4e1f-ab98-623f77ad6a7e" />


Average Footfall by Day:

•	Zone 2’s busiest days by average footfall per day were Thursday (16,062), Wednesday (15,912), and Tuesday (15,359). 

•	Footfall was significantly lower on Sunday’s (9,654). 

 <img width="289" height="449" alt="Tuesday" src="https://github.com/user-attachments/assets/856f3acb-02a8-4c07-a7d0-417be4b67fd7" />


<ins>Zone 3<ins>

Footfall By Month: 

•	In 2024, Zone 3 experienced the highest footfall in October (26.3m), and the lowest in August (22.2m). 

•	Footfall dipped in August, before peeking in October and dipped again in December (22.5m). 

 <img width="494" height="270" alt="Footfall" src="https://github.com/user-attachments/assets/f039d4a5-3c75-4675-9900-7a969d4fb6f4" />


Average Footfall by Day: 

•	Thursday (13,075), Wednesday (12,951), and Tuesday (12,588) were Zone 3’s busiest days by average footfall per day. 

•	Footfall on weekends were generally lower, with significantly lower footfall recorded on Sunday’s (7,780).

<img width="291" height="451" alt="Average Footfall by Day" src="https://github.com/user-attachments/assets/8245f8cf-1ed3-4d80-994d-1ca35ead852c" />


<ins>Zone 4<ins> 

Footfall By Month: 

•	In 2024, Zone 4 recorded the highest monthly footfall in October (20.7m) and the lowest in December (17.5m). 

•	Footfall dipped in August (18.1m) before peaking in October and dipped again in December. 

 <img width="485" height="275" alt="January" src="https://github.com/user-attachments/assets/97aba824-0fac-4690-a8eb-a374e538ade5" />


Average Footfall by Day: 

•	Zone 4’s busiest days were Thursday (11,770), Wednesday (11,662), and Tuesday (11,435), by average footfall per day. 

•	Weekends typically experienced lower footfall, with significantly lower footfall recorded on Sunday’s (6,808). 

 <img width="290" height="452" alt="Tuesday" src="https://github.com/user-attachments/assets/68a7bd70-7af6-40c4-984d-6b84549e686a" />


_Which days of the week are the busiest?_

Average Footfall by Day: 

•	Thursday (20,722), Wednesday (20,254), and Tuesday (19,606) had the highest recorded average footfall in 2024. 

•	Weekends typically had lower footfall than weekdays; however, Saturdays (17,110) recorded slightly higher average footfall than Mondays (16,879). 

•	Sunday’s (12,070) experienced significantly lower average footfall than other days of the week. 

 <img width="290" height="449" alt="Footfall" src="https://github.com/user-attachments/assets/d2e09326-8b11-4cf5-afd6-e8174d7f99d7" />


_Which dates in the year are busiest?_ 

Total Footfall by Date: 

•	The busiest dates in 2024 occurred in late November and December. 

 <img width="611" height="190" alt="05122024" src="https://github.com/user-attachments/assets/85f3af31-896e-4b01-bca8-0c0611f07e84" />


_Which stations are busiest on peak days?_ 

Average Station Footfall on Peak Days: 

•	Zone 1 stations are consistently the busiest stations on peak days. 

 <img width="357" height="441" alt="Busiest Stations Peak Days 2024" src="https://github.com/user-attachments/assets/260fa23b-1a25-46dc-8eaa-f6788c2b0f31" />


_How has footfall changed over the year?_ 

Total Footfall by Month: 

•	In 2024, total footfall was highest in October (259.5m) and the lowest in January (218.2m). 

•	Footfall dipped in August (222.5m), before peaking in October and dipped again in December (231.5m). 

 <img width="482" height="273" alt="February" src="https://github.com/user-attachments/assets/f476d9e4-2925-4c49-8948-155ecbd2e724" />


_Which stations are underperforming?_ 

Lowest Performing Stations by Daily Footfall 2024: 

•	In 2024, 283 stations recorded average daily footfall lower than their corresponding zone’s daily footfall average. 

 <img width="511" height="321" alt="Lowest Performing Stations by Daily Footfall 2024" src="https://github.com/user-attachments/assets/c59f6373-ea98-4edd-b850-2c46a1176b2c" />

To view the full list of underperforming stations, refer to **Stations Below Average Footfall.xlsx** in my repository. 

**Recommendations** 

The insights drawn could be useful across several departments within TfL, such as Finance, R&D, Marketing, HR, etc., to support business decisions, strategy, and performance. They could also be utilised by third-party organisations, whose clients, customers, or users rely on TfL products and services. 

Based on the uncovered insights, the following recommendations are proposed: 

•	**Predictive modelling:** Use current (2025) and past (2024) data to anticipate high footfall during recurring events, peak days, and busy stations. Assigning additional staff and ensuring stations are ready to accommodate high footfall will help TfL to prepare. 

•	**Station development and expansion:** To better manage consistently heavy footfall, TfL could expand existing stations, install additional ticket barriers, enlarge platforms, or build new stations. 

•	**Cost optimisation:** TfL could consider closing stations with persistently low usage or reducing operational costs (by re-assigning staff to other stations or reducing the number of ticket barriers, for example) to improve efficiency.  

•	**Further research:** TfL may conduct deeper investigations into factors influencing footfall, such as major events, hybrid or work-from-home patterns, and seasonal variations. 

•	**Third-party applications:** TfL may also collaborate with partners such as Google Maps to integrate footfall data into journey planning tools, allowing users to be directed towards alternative, less crowded routes on particularly busy days, for example. 

**Conclusion** 

This analysis was carried out with careful consideration of assumptions, ethics and potential bias to ensure relevance and accuracy. 

When calculating footfall by day of the week, it was essential to account for multiple occurrences of each day in a year, as some days occur more frequently than others. Using averages rather than sums helped to avoid distortion of findings caused by this unequal distribution, therefore reducing interpretation bias. 

From the data, it was assumed that the total tap count indicates the total footfall in a station/day; however, these values may not be a complete representation of footfall. For example, many passengers pass through stations to change lines without tapping in or out. Additional data collection may be required to provide a more accurate representation of overall footfall. 

The analysis may be limited by the availability of data, which in some cases required additional searches and manual entry. 

Finally, the use of a publicly available data set provided by TfL with no personally identifiable information considers ethical data practices.
