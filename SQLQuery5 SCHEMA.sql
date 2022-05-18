INSERT INTO INDIA.ROUND
SELECT
round
,inround
,panel12345
,deceased
,dint
,birth
,birth_age
,dadyrdied 
,momyrdied 
 FROM dbo.INDIA

 INSERT INTO VIETNAM.ROUND
SELECT
round
,inround
,panel12345
,deceased
,dint
,birth
,birth_age
,dadyrdied 
,momyrdied 
 FROM dbo.VIETNAM

 INSERT INTO PERU.ROUND
SELECT
round
,inround
,panel12345
,deceased
,dint
,birth
,birth_age
,dadyrdied 
,momyrdied 
 FROM dbo.PERU

 INSERT INTO VIETNAM.ROUND
SELECT
childid
,round
,inround
,panel12345
,deceased
,dint
,birth
,birth_age
,dadyrdied 
,momyrdied 
 FROM dbo.VIETNAM

 INSERT INTO INDIA.EDUCATION
SELECT
literate,
chlang,
chrephealth1,
chrephealth2,
chrephealth3,
chrephealth4,
levlwrit,
levlread,
timesch,
hghgrade,
entype,
enrol,
engrade
 FROM dbo.INDIA

 INSERT INTO PERU.EDUCATION
SELECT
literate,
chlang,
chrephealth1,
chrephealth2,
chrephealth3,
chrephealth4,
levlwrit,
levlread,
timesch,
hghgrade,
entype,
enrol,
engrade
 FROM dbo.PERU

 INSERT INTO PERU.EDUCATION
SELECT
literate,
chlang,
chrephealth1,
chrephealth2,
chrephealth3,
chrephealth4,
levlwrit,
levlread,
timesch,
entype,
enrol,
engrade
 FROM dbo.PERU

 INSERT INTO INDIA.CHILD
SELECT
childid
,round
,agemon
,chsex
,childloc
,marrcohab
,marrcohab_age 
,birth
,birth_age
,literate
,region
 FROM dbo.INDIA

 INSERT INTO PERU.CHILD
SELECT
childid
,round
,agemon
,chsex
,childloc
,marrcohab
,marrcohab_age 
,birth
,birth_age
,literate
,region
 FROM dbo.PERU

  INSERT INTO VIETNAM.CHILD
SELECT
childid
,round
,agemon
,chsex
,childloc
,marrcohab
,marrcohab_age 
,birth
,birth_age
,literate
,region
 FROM dbo.VIETNAM

INSERT INTO PERU.NUTRITION
SELECT
chhealth,
stunting,
thinness,
chhrel,
cladder,
foodsec,
chsmoke,
chalcohol,
underweight
FROM PERU


INSERT INTO ETHIOPIA.VULNERABILITIES
SELECT
careid,
shenv1,
shenv2,
shenv3,
shenv4,
shenv5,
shenv6,
shenv7,
shenv8,
shenv9,
shhouse1,
shhouse2,
shhouse3 
FROM ETHIOPIA

INSERT INTO INDIA.VULNERABILITIES
SELECT
careid,
shenv1,
shenv2,
shenv3,
shenv4,
shenv5,
shenv6,
shenv7,
shenv8,
shenv9,
shhouse1,
shhouse2,
shhouse3 
FROM INDIA

INSERT INTO VIETNAM.VULNERABILITIES
SELECT
careid,
shenv1,
shenv2,
shenv3,
shenv4,
shenv5,
shenv6,
shenv7,
shenv8,
shenv9,
shhouse1,
shhouse2,
shhouse3 
FROM VIETNAM

INSERT INTO PERU.VULNERABILITIES
SELECT
careid,
shenv1,
shenv2,
shenv3,
shenv4,
shenv5,
shenv6,
shenv7,
shenv8,
shenv9,
shhouse1,
shhouse2,
shhouse3 
FROM PERU

INSERT INTO INDIA.HOUSEHOLD
SELECT
careid,
ownhouse,
ownlandhse,
hhsize,
wi,
hq,
commsch,
commwork,
hstudy,
hschool,
hwork,
htask,
hchore,
hcare,
hsleep
FROM INDIA



INSERT INTO ETHIOPIA.HOUSEHOLD
SELECT
careid,
ownhouse,
ownlandhse,
hhsize,
wi_new,
hq_new,
commsch,
commwork,
hstudy,
hschool,
hwork,
htask,
hchore,
hcare,
hsleep
FROM ETHIOPIA



INSERT INTO VIETNAM.HOUSEHOLD
SELECT
careid,
ownhouse,
ownlandhse,
hhsize,
wi_new,
hq_new,
commsch,
commwork,
hstudy,
hschool,
hwork,
htask,
hchore,
hcare,
hsleep
FROM VIETNAM

INSERT INTO PERU.AMENITIES
SELECT
hq,
sv,
drwaterq,
toiletq,
elecq,
cookingq,
typesite,
 juntos,
bonograt,
beca_yl,
sisgrat_yl
FROM PERU

INSERT INTO VIETNAM.AMENITIES
SELECT
hq_new,
sv_new,
drwaterq_new,
toiletq_new,
elecq_new,
cookingq_new,
typesite,
molisa06,
molisa09,
molisa10,
molisa16
FROM VIETNAM

 	INSERT INTO ETHIOPIA.AMENITIES
SELECT
hq_new,
sv_new,
drwaterq_new,
toiletq_new,
elecq_new,
cookingq_new,
typesite,
psnp_pw,
psnp_ds,
othprog,
hep,
resettled,
eap
FROM ETHIOPIA

INSERT INTO INDIA.AMENITIES
SELECT
hq,
sv,
drwaterq,
toiletq,
elecq,
cookingq,
typesite,
pds,
nregs,
nregs_allow,
nregs_work,
ikp,

INSERT INTO INDIA.FAMILYLIVES
SELECT
round,
careid,
caredu,
carehead,
careage,
caresex,
carerel,
carecantread,
dadid,
dadedu,
dadlive,
headid,
dadcantread,
momid,
momedu,
momlive,
momcantread,
childloc
FROM INDIA


ikp_child
FROM INDIA

INSERT INTO ETHIOPIA.FAMILYLIVES
SELECT
round,
careid,
caredu,
carehead,
careage,
caresex,
carerel,
carecantread,
dadid,
dadedu,
dadlive,
headid,
dadcantread,
momid,
momedu,
momlive,
momcantread,
childloc
FROM ETHIOPIA

INSERT INTO PERU.FAMILYLIVES
SELECT
round,
careid,
caredu,
carehead,
careage,
caresex,
carerel,
carecantread,
dadid,
dadedu,
dadlive,
headid,
dadcantread,
momid,
momedu,
momlive,
momcantread,
childloc
FROM PERU


INSERT INTO VIETNAM.FAMILYLIVES
SELECT
round,
careid,
caredu,
carehead,
careage,
caresex,
carerel,
carecantread,
dadid,
dadedu,
dadlive,
headid,
dadcantread,
momid,
momedu,
momlive,
momcantread,
childloc
FROM VIETNAM

ALTER TABLE INDIA.CHILD
ADD 

CREATE TABLE VIETNAM.CHILD
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

CREATE TABLE INDIA.CHILD
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

CREATE TABLE ETHIOPIA.CHILD
(
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

ALTER TABLE ETHIOPIA.CHILD
ADD CONSTRAINT[PK_childid] Primary Key(childid,round,careid,chhealth,literate) 

ALTER TABLE ETHIOPIA.CHILD
ADD CONSTRAINT[FK_chsex]  Foreign Key(chsex,marrcohab,marrcohab_age,agemon, birth,birth_age,region,literate) 
INSERT INTO ETHIOPIA.CHILD
SELECT
childid,
round,
agemon,
chsex,
childloc,
chhealth,
careid,
marrcohab,
marrcohab_age,
birth,
birth_age,
literate,
region 
FROM ETHIOPIA

ALTER TABLE ETHIOPIA.ROUND
ADD CONSTRAINT[FK_round] Foreign Key(round,childid,chhealth,careid,literate) References ETHIOPIA.CHILD(round,childid,chhealth,careid,literate)






INSERT INTO ETHIOPIA.ROUND
SELECT
round
,inround
,panel
,deceased
,dint
,birth
,birth_age
,dadyrdied 
,momyrdied 
 FROM dbo.ETHIOPIA