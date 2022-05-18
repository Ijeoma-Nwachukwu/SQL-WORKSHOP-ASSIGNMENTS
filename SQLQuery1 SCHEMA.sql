CREATE TABLE ETHIOPIA.NUTRITION
(
chhealth VARCHAR (130) NOT NULL,
stunting VARCHAR(130) NOT NULL,
thiness NVARCHAR(130) NOT NULL,
chhrel VARCHAR(130) NOT NULL,
cladder VARCHAR(130) NOT NULL,
foodsec VARCHAR(130) NOT NULL,
chsmoke VARCHAR(130) NOT NULL,
chalcohol VARCHAR(130) NOT NULL,
underweight VARCHAR(130) NOT NULL
)

CREATE TABLE ETHIOPIA.VULNERABILITIES
(
careid VARCHAR (130) NOT NULL,
shenv1 VARCHAR(130) NOT NULL,
shenv2 NVARCHAR(130) NOT NULL,
shenv3 VARCHAR(130) NOT NULL,
shenv4 VARCHAR(130) NOT NULL,
shenv5 VARCHAR(130) NOT NULL,
shenv6 VARCHAR(130) NOT NULL,
shenv7 VARCHAR(130) NOT NULL,
shenv8 VARCHAR(130) NOT NULL,
shenv9 VARCHAR(130) NOT NULL,
shhouse1 VARCHAR(130) NOT NULL,
shhouse2 VARCHAR (130) NOT NULL,
shhouse3 VARCHAR (130) NOT NULL
)
ALTER TABLE ETHIOPIA.CHILD
ADD PRIMARY KEY (childid)

ALTER TABLE ETHIOPIA.ROUND
ADD PRIMARY KEY (round)

ALTER TABLE ETHIOPIA.EDUCATION
ADD PRIMARY KEY (literate)

ALTER TABLE ETHIOPIA.FAMILYLIVES
ADD PRIMARY KEY (careid)

ALTER TABLE ETHIOPIA.HOUSEHOLD
ADD PRIMARY KEY (hhsize)

CREATE TABLE ETHIOPIA.HEALTH
(
chhealth VARCHAR (30) NOT NULL,
bmi VARCHAR(30) NOT NULL,
bwght NVARCHAR(30) NOT NULL,
bwdoc VARCHAR(30) NOT NULL,
numante VARCHAR(30) NOT NULL,
delivery VARCHAR(30) NOT NULL,
chinjury VARCHAR(30) NOT NULL,
chillness VARCHAR(30) NOT NULL,
chmightdie VARCHAR(30) NOT NULL,
hib VARCHAR(30) NOT NULL,
polio VARCHAR(30) NOT NULL,
dpt VARCHAR (30) NOT NULL,
measles VARCHAR (30) NOT NULL,
bcg VARCHAR(30) NOT NULL,
tetanus VARCHAR(30) NOT NULL,
chhprob VARCHAR(30) NOT NULL,
chdisability VARCHAR(30) NOT NULL,
chsisscale VARCHAR(30) NOT NULL
)


ALTER TABLE ETHIOPIA.HEALTH
ADD PRIMARY KEY (chhealth)

ALTER TABLE ETHIOPIA.AMENITIES
ADD PRIMARY KEY (hq_new)

CREATE SCHEMA INDIA 
GO

CREATE TABLE INDIA.CHILD
(
childid	VARCHAR(150) NOT NULL,
round VARCHAR (130) NOT NULL,
agemon VARCHAR (130) NOT NULL,
chsex NVARCHAR(130) NOT NULL,
childloc NVARCHAR(150) NOT NULL,
marrcohab VARCHAR(130) NOT NULL,
marrcohab_age VARCHAR(130) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
literate VARCHAR(130) NOT NULL,
region VARCHAR (130) NOT NULL
)

CREATE TABLE INDIA.ROUND
(
round VARCHAR (130) NOT NULL,
inround VARCHAR (130) NOT NULL,
panel12345 VARCHAR (130) NOT NULL,
deceased NVARCHAR(130) NOT NULL,
dint NVARCHAR(150) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
dadyrdied VARCHAR(130) NOT NULL,
momyrdied VARCHAR (130) NOT NULL
)
CREATE TABLE VIETNAM.ROUND
(
round VARCHAR (130) NOT NULL,
inround VARCHAR (130) NOT NULL,
panel12345 VARCHAR (130) NOT NULL,
deceased NVARCHAR(130) NOT NULL,
dint NVARCHAR(150) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
dadyrdied VARCHAR(130) NOT NULL,
momyrdied VARCHAR (130) NOT NULL
)

CREATE TABLE INDIA.FAMILYLIVES
(
round VARCHAR (130) NOT NULL,
careid VARCHAR (130) NOT NULL,
caredu VARCHAR(130) NOT NULL,
carehead NVARCHAR(130) NOT NULL,
careage NVARCHAR(150) NOT NULL,
caresex VARCHAR(130) NOT NULL,
carerel VARCHAR(130) NOT NULL,
carecantread VARCHAR(130) NOT NULL,
dadid VARCHAR(130) NOT NULL,
dadedu VARCHAR(130) NOT NULL,
dadlive VARCHAR(130) NOT NULL,
headid VARCHAR (130) NOT NULL,
dadcantread VARCHAR (130) NOT NULL,
momid VARCHAR(130) NOT NULL,
momedu VARCHAR(130) NOT NULL,
momlive VARCHAR(130) NOT NULL,
momcantread VARCHAR(130) NOT NULL,
childloc VARCHAR (130) NOT NULL
)

CREATE TABLE INDIA.HOUSEHOLD
(
careid VARCHAR (130) NOT NULL,
ownhouse VARCHAR(130) NOT NULL,
ownlandhse NVARCHAR(130) NOT NULL,
hhsize NVARCHAR(130) NOT NULL,
wi VARCHAR(130) NOT NULL,
hq VARCHAR(130) NOT NULL,
commsch VARCHAR(130) NOT NULL,
commwork VARCHAR(130) NOT NULL,
hstudy VARCHAR (130) NOT NULL,
hschool VARCHAR (130) NOT NULL,
hwork VARCHAR(130) NOT NULL,
htask VARCHAR(130) NOT NULL,
hchore VARCHAR(130) NOT NULL,
hcare VARCHAR(130) NOT NULL,
hsleep VARCHAR (130) NOT NULL
)

CREATE TABLE INDIA.AMENITIES
(
hq VARCHAR (130) NOT NULL,
sv VARCHAR(130) NOT NULL,
drwaterq NVARCHAR(130) NOT NULL,
toiletq NVARCHAR(130) NOT NULL,
elecq VARCHAR(130) NOT NULL,
cookingq VARCHAR(130) NOT NULL,
typesite VARCHAR(130) NOT NULL,
pds VARCHAR(130) NOT NULL,
nregs VARCHAR(130) NOT NULL,
nregs_allow VARCHAR (130) NOT NULL,
nregs_work VARCHAR (130) NOT NULL,
ikp VARCHAR(130) NOT NULL,
ikp_child VARCHAR(130) NOT NULL
)


	CREATE TABLE INDIA.EDUCATION
(
literate VARCHAR (150) NOT NULL,
chlang VARCHAR(130) NOT NULL,
chrephealth1 NVARCHAR(130) NOT NULL,
chrephealth2 NVARCHAR(130) NOT NULL,
chrephealth3 VARCHAR(130) NOT NULL,
chrephealth4 VARCHAR(130) NOT NULL,
levlwrit VARCHAR(130) NOT NULL,
levlread VARCHAR(130) NOT NULL,
timesch VARCHAR(130) NOT NULL,
hghgrade VARCHAR (130) NOT NULL,
entype VARCHAR (130) NOT NULL,
enrol VARCHAR(130) NOT NULL,
engrade VARCHAR(130) NOT NULL
)

	CREATE TABLE ETHIOPIA.HEALTH
(
chhealth VARCHAR (130) NOT NULL,
bmi VARCHAR(130) NOT NULL,
bwght NVARCHAR(130) NOT NULL,
bwdoc VARCHAR(130) NOT NULL,
numante VARCHAR(130) NOT NULL,
delivery VARCHAR(130) NOT NULL,
chinjury VARCHAR(130) NOT NULL,
chillness VARCHAR(130) NOT NULL,
chmightdie VARCHAR(130) NOT NULL,
hib VARCHAR(130) NOT NULL,
polio VARCHAR(130) NOT NULL,
dpt VARCHAR (130) NOT NULL,
measles VARCHAR (130) NOT NULL,
bcg VARCHAR(130) NOT NULL,
tetanus VARCHAR(130) NOT NULL,
chhprob VARCHAR(130) NOT NULL,
chdisability VARCHAR(130) NOT NULL,
chdisscale VARCHAR(130) NOT NULL
)

CREATE TABLE VIETNAM.NUTRITION
(
chhealth VARCHAR (130) NOT NULL,
stunting VARCHAR(130) NOT NULL,
thinness NVARCHAR(130) NOT NULL,
chhrel VARCHAR(130) NOT NULL,
cladder VARCHAR(130) NOT NULL,
foodsec VARCHAR(130) NOT NULL,
chsmoke VARCHAR(130) NOT NULL,
chalcohol VARCHAR(130) NOT NULL,
underweight VARCHAR(130) NOT NULL
)

CREATE TABLE INDIA.VULNERABILITIES
(
careid VARCHAR (130) NOT NULL,
shenv1 VARCHAR(130) NOT NULL,
shenv2 NVARCHAR(130) NOT NULL,
shenv3 VARCHAR(130) NOT NULL,
shenv4 VARCHAR(130) NOT NULL,
shenv5 VARCHAR(130) NOT NULL,
shenv6 VARCHAR(130) NOT NULL,
shenv7 VARCHAR(130) NOT NULL,
shenv8 VARCHAR(130) NOT NULL,
shenv9 VARCHAR(130) NOT NULL,
shhouse1 VARCHAR(130) NOT NULL,
shhouse2 VARCHAR (130) NOT NULL,
shhouse3 VARCHAR (130) NOT NULL
)

CREATE SCHEMA PERU 
GO

CREATE TABLE PERU.CHILD
(
childid	VARCHAR(150) NOT NULL,
round VARCHAR (130) NOT NULL,
agemon VARCHAR(130) NOT NULL,
chsex NVARCHAR(130) NOT NULL,
childloc NVARCHAR(150) NOT NULL,
chhealth VARCHAR(150) NOT NULL,
careid VARCHAR(150) NOT NULL,
marrcohab VARCHAR(130) NOT NULL,
marrcohab_age VARCHAR(130) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
literate VARCHAR(130) NOT NULL,
region VARCHAR (130) NOT NULL
)

 EXEC sp_rename 'INDIA.ROUND.PANEL', 'panel12345', 'COLUMN';
 
 CREATE TABLE PERU.ROUND
(
childid VARCHAR (150) NOT NULL,
round VARCHAR (130) NOT NULL,
inround VARCHAR (130) NOT NULL,
panel12345 VARCHAR (130) NOT NULL,
deceased NVARCHAR(130) NOT NULL,
dint NVARCHAR(150) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
dadyrdied VARCHAR(130) NOT NULL,
momyrdied VARCHAR (130) NOT NULL
)

CREATE TABLE PERU.FAMILYLIVES
(
round VARCHAR (130) NOT NULL,
careid VARCHAR (130) NOT NULL,
caredu VARCHAR(130) NOT NULL,
carehead NVARCHAR(130) NOT NULL,
careage NVARCHAR(150) NOT NULL,
caresex VARCHAR(130) NOT NULL,
carerel VARCHAR(130) NOT NULL,
carecantread VARCHAR(130) NOT NULL,
dadid VARCHAR(130) NOT NULL,
dadedu VARCHAR(130) NOT NULL,
dadlive VARCHAR(130) NOT NULL,
headid VARCHAR (130) NOT NULL,
dadcantread VARCHAR (130) NOT NULL,
momid VARCHAR(130) NOT NULL,
momedu VARCHAR(130) NOT NULL,
momlive VARCHAR(130) NOT NULL,
momcantread VARCHAR(130) NOT NULL,
childloc VARCHAR (130) NOT NULL
)

CREATE TABLE PERU.HOUSEHOLD
(
careid VARCHAR (130) NOT NULL,
ownhouse VARCHAR(130) NOT NULL,
ownlandhse NVARCHAR(130) NOT NULL,
hhsize NVARCHAR(130) NOT NULL,
wi VARCHAR(130) NOT NULL,
hq VARCHAR(130) NOT NULL,
commsch VARCHAR(130) NOT NULL,
commwork VARCHAR(130) NOT NULL,
hstudy VARCHAR (130) NOT NULL,
hschool VARCHAR (130) NOT NULL,
hwork VARCHAR(130) NOT NULL,
htask VARCHAR(130) NOT NULL,
hchore VARCHAR(130) NOT NULL,
hcare VARCHAR(130) NOT NULL,
hsleep VARCHAR (130) NOT NULL
)

CREATE TABLE PERU.AMENITIES
(
hq VARCHAR (130) NOT NULL,
sv VARCHAR(130) NOT NULL,
drwaterq NVARCHAR(130) NOT NULL,
toiletq NVARCHAR(130) NOT NULL,
elecq VARCHAR(130) NOT NULL,
cookingq VARCHAR(130) NOT NULL,
typesite VARCHAR(130) NOT NULL,
 juntos VARCHAR(130) NOT NULL,
bonograt VARCHAR(130) NOT NULL,
beca_yl VARCHAR (130) NOT NULL,
sisgrat_yl VARCHAR (130) NOT NULL
)

CREATE TABLE PERU.EDUCATION
(
literate VARCHAR (150) NOT NULL,
chlang VARCHAR(130) NOT NULL,
chrephealth1 NVARCHAR(130) NOT NULL,
chrephealth2 NVARCHAR(130) NOT NULL,
chrephealth3 VARCHAR(130) NOT NULL,
chrephealth4 VARCHAR(130) NOT NULL,
levlwrit VARCHAR(130) NOT NULL,
levlread VARCHAR(130) NOT NULL,
timesch VARCHAR(130) NOT NULL,
entype VARCHAR (130) NOT NULL,
enrol VARCHAR(130) NOT NULL,
engrade VARCHAR(130) NOT NULL
)

	CREATE TABLE PERU.HEALTH
(
chhealth VARCHAR (130) NOT NULL,
bmi VARCHAR(130) NOT NULL,
bwght NVARCHAR(130) NOT NULL,
bwdoc VARCHAR(130) NOT NULL,
numante VARCHAR(130) NOT NULL,
delivery VARCHAR(130) NOT NULL,
chinjury VARCHAR(130) NOT NULL,
chillness VARCHAR(130) NOT NULL,
chmightdie VARCHAR(130) NOT NULL,
hib VARCHAR(130) NOT NULL,
polio VARCHAR(130) NOT NULL,
dpt VARCHAR (130) NOT NULL,
measles VARCHAR (130) NOT NULL,
bcg VARCHAR(130) NOT NULL,
tetanus VARCHAR(130) NOT NULL,
chhprob VARCHAR(130) NOT NULL,
chdisability VARCHAR(130) NOT NULL,
chdisscale VARCHAR(130) NOT NULL
)

CREATE TABLE PERU.NUTRITION
(
chhealth VARCHAR (130) NOT NULL,
stunting VARCHAR(130) NOT NULL,
thiness NVARCHAR(130) NOT NULL,
chhrel VARCHAR(130) NOT NULL,
cladder VARCHAR(130) NOT NULL,
foodsec VARCHAR(130) NOT NULL,
chsmoke VARCHAR(130) NOT NULL,
chalcohol VARCHAR(130) NOT NULL,
underweight VARCHAR(130) NOT NULL
)

CREATE TABLE PERU.VULNERABILITIES
(
careid VARCHAR (130) NOT NULL,
shenv1 VARCHAR(130) NOT NULL,
shenv2 NVARCHAR(130) NOT NULL,
shenv3 VARCHAR(130) NOT NULL,
shenv4 VARCHAR(130) NOT NULL,
shenv5 VARCHAR(130) NOT NULL,
shenv6 VARCHAR(130) NOT NULL,
shenv7 VARCHAR(130) NOT NULL,
shenv8 VARCHAR(130) NOT NULL,
shenv9 VARCHAR(130) NOT NULL,
shhouse1 VARCHAR(130) NOT NULL,
shhouse2 VARCHAR (130) NOT NULL,
shhouse3 VARCHAR (130) NOT NULL
)

CREATE SCHEMA PERU 
GO

CREATE TABLE PERU.CHILD
(
childid	VARCHAR(50) PRIMARY KEY,
round VARCHAR (30) NOT NULL,
agemon INT NOT NULL,
chsex NVARCHAR(30) NOT NULL,
childloc NVARCHAR(50) NOT NULL,
marrcohab VARCHAR(30) NOT NULL,
marrcohab_age VARCHAR(30) NOT NULL,
birth VARCHAR(30) NOT NULL,
birth_age VARCHAR(30) NOT NULL,
literate VARCHAR(30) NOT NULL,
region VARCHAR (30) NOT NULL
)
CREATE SCHEMA VIETNAM 
GO

CREATE TABLE VIETNAM.CHILD
(
childid	VARCHAR(150) NOT NULL,
round VARCHAR (130) NOT NULL,
agemon VARCHAR(130) NOT NULL,
chsex NVARCHAR(130) NOT NULL,
childloc NVARCHAR(150) NOT NULL,
marrcohab VARCHAR(130) NOT NULL,
marrcohab_age VARCHAR(130) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
literate VARCHAR(130) NOT NULL,
region VARCHAR (130) NOT NULL
)

CREATE TABLE VIETNAM.ROUND
(
childid VARCHAR (150) NOT NULL,
round VARCHAR (130) NOT NULL,
inround VARCHAR (130) NOT NULL,
panel12345 VARCHAR (130) NOT NULL,
deceased NVARCHAR(130) NOT NULL,
dint NVARCHAR(150) NOT NULL,
birth VARCHAR(130) NOT NULL,
birth_age VARCHAR(130) NOT NULL,
dadyrdied VARCHAR(130) NOT NULL,
momyrdied VARCHAR (130) NOT NULL
)

CREATE TABLE VIETNAM.FAMILYLIVES
(
round VARCHAR (130) NOT NULL,
careid VARCHAR (130) NOT NULL,
caredu VARCHAR(130) NOT NULL,
carehead NVARCHAR(130) NOT NULL,
careage NVARCHAR(150) NOT NULL,
caresex VARCHAR(130) NOT NULL,
carerel VARCHAR(130) NOT NULL,
carecantread VARCHAR(130) NOT NULL,
dadid VARCHAR(130) NOT NULL,
dadedu VARCHAR(130) NOT NULL,
dadlive VARCHAR(130) NOT NULL,
headid VARCHAR (130) NOT NULL,
dadcantread VARCHAR (130) NOT NULL,
momid VARCHAR(130) NOT NULL,
momedu VARCHAR(130) NOT NULL,
momlive VARCHAR(130) NOT NULL,
momcantread VARCHAR(130) NOT NULL,
childloc VARCHAR (130) NOT NULL
)

CREATE TABLE VIETNAM.HOUSEHOLD
(
careid VARCHAR (130) NOT NULL,
ownhouse VARCHAR(130) NOT NULL,
ownlandhse NVARCHAR(130) NOT NULL,
hhsize NVARCHAR(130) NOT NULL,
wi_new VARCHAR(130) NOT NULL,
hq_new VARCHAR(130) NOT NULL,
commsch VARCHAR(130) NOT NULL,
commwork VARCHAR(130) NOT NULL,
hstudy VARCHAR (130) NOT NULL,
hschool VARCHAR (130) NOT NULL,
hwork VARCHAR(130) NOT NULL,
htask VARCHAR(130) NOT NULL,
hchore VARCHAR(130) NOT NULL,
hcare VARCHAR(130) NOT NULL,
hsleep VARCHAR (130) NOT NULL
)
CREATE TABLE VIETNAM.AMENITIES
(
hq_new VARCHAR (130) NOT NULL,
sv_new VARCHAR(130) NOT NULL,
drwaterq_new NVARCHAR(130) NOT NULL,
toiletq_new NVARCHAR(130) NOT NULL,
elecq_new VARCHAR(130) NOT NULL,
cookingq_new VARCHAR(130) NOT NULL,
typesite VARCHAR(130) NOT NULL,
 molisa06 VARCHAR(130) NOT NULL,
molisa09 VARCHAR(130) NOT NULL,
molisa10 VARCHAR (130) NOT NULL,
molisa16 VARCHAR (130) NOT NULL
)

CREATE TABLE VIETNAM.EDUCATION
(
literate VARCHAR (150) NOT NULL,
chlang VARCHAR(130) NOT NULL,
chrephealth1 NVARCHAR(130) NOT NULL,
chrephealth2 NVARCHAR(130) NOT NULL,
chrephealth3 VARCHAR(130) NOT NULL,
chrephealth4 VARCHAR(130) NOT NULL,
levlwrit VARCHAR(130) NOT NULL,
levlread VARCHAR(130) NOT NULL,
timesch VARCHAR(130) NOT NULL,
hghgrade VARCHAR (130) NOT NULL,
entype VARCHAR (130) NOT NULL,
enrol VARCHAR(130) NOT NULL,
engrade VARCHAR(130) NOT NULL
)

CREATE TABLE VIETNAM.EDUCATION
(
literate VARCHAR (150) NOT NULL,
chlang VARCHAR(130) NOT NULL,
chrephealth1 NVARCHAR(130) NOT NULL,
chrephealth2 NVARCHAR(130) NOT NULL,
chrephealth3 VARCHAR(130) NOT NULL,
chrephealth4 VARCHAR(130) NOT NULL,
levlwrit VARCHAR(130) NOT NULL,
levlread VARCHAR(130) NOT NULL,
timesch VARCHAR(130) NOT NULL,
hghgrade VARCHAR (130) NOT NULL,
entype VARCHAR (130) NOT NULL,
enrol VARCHAR(130) NOT NULL,
engrade VARCHAR(130) NOT NULL
)

	CREATE TABLE VIETNAM.HEALTH
(
chhealth VARCHAR (130) NOT NULL,
bmi VARCHAR(130) NOT NULL,
bwght NVARCHAR(130) NOT NULL,
bwdoc VARCHAR(130) NOT NULL,
numante VARCHAR(130) NOT NULL,
delivery VARCHAR(130) NOT NULL,
chinjury VARCHAR(130) NOT NULL,
chillness VARCHAR(130) NOT NULL,
chmightdie VARCHAR(130) NOT NULL,
hib VARCHAR(130) NOT NULL,
polio VARCHAR(130) NOT NULL,
dpt VARCHAR (130) NOT NULL,
measles VARCHAR (130) NOT NULL,
bcg VARCHAR(130) NOT NULL,
tetanus VARCHAR(130) NOT NULL,
chhprob VARCHAR(130) NOT NULL,
chdisability VARCHAR(130) NOT NULL,
chsisscale VARCHAR(130) NOT NULL
)

CREATE TABLE VIETNAM.NUTRITION
(
chhealth VARCHAR (130) NOT NULL,
stunting VARCHAR(130) NOT NULL,
thiness NVARCHAR(130) NOT NULL,
chhrel VARCHAR(130) NOT NULL,
cladder VARCHAR(130) NOT NULL,
foodsec VARCHAR(130) NOT NULL,
chsmoke VARCHAR(130) NOT NULL,
chalcohol VARCHAR(130) NOT NULL,
underweight VARCHAR(130) NOT NULL
)

CREATE TABLE VIETNAM.VULNERABILITIES
(
careid VARCHAR (130) NOT NULL,
shenv1 VARCHAR(130) NOT NULL,
shenv2 NVARCHAR(130) NOT NULL,
shenv3 VARCHAR(130) NOT NULL,
shenv4 VARCHAR(130) NOT NULL,
shenv5 VARCHAR(130) NOT NULL,
shenv6 VARCHAR(130) NOT NULL,
shenv7 VARCHAR(130) NOT NULL,
shenv8 VARCHAR(130) NOT NULL,
shenv9 VARCHAR(130) NOT NULL,
shhouse1 VARCHAR(130) NOT NULL,
shhouse2 VARCHAR (130) NOT NULL,
shhouse3 VARCHAR (130) NOT NULL
)

EXEC sp_rename 'VIETNAM.HOUSEHOLD.hq', 'hq_new', 'COLUMN';

EXEC sp_rename 'VIETNAM.HOUSEHOLD.wi', 'wi_new', 'COLUMN';