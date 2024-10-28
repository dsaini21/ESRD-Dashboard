
CREATE TABLE IF NOT EXISTS allergies (
    start DATE,
    stop DATE,
    patient VARCHAR(1000),
    encounter VARCHAR(1000),
    code VARCHAR(1000),
    description VARCHAR(1000),
    type VARCHAR(1000),
    category VARCHAR(1000),
    reaction1 VARCHAR(1000),
    severity1 VARCHAR(1000),
    reaction2 VARCHAR(1000),
    severity2 VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS careplans (
    id VARCHAR(1000),
    start VARCHAR(1000),
    stop VARCHAR(1000),
    patient VARCHAR(1000),
    encounter VARCHAR(1000),
    code VARCHAR(1000),
    description VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS conditions (
    start DATE,
    stop DATE,
    patient VARCHAR(1000),
    encounter VARCHAR(1000),
    code VARCHAR(1000),
    description VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS devices (
    start DATETIME,
    stop DATETIME,
    patient VARCHAR(200),
    encounter VARCHAR(200),
    code VARCHAR(200),
    description VARCHAR(200),
    udi VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS encounters (
    id VARCHAR(100),
    start DATETIME,
    stop DATETIME,
    patient VARCHAR(100),
    organization VARCHAR(100),
    provider VARCHAR(100),
    payer VARCHAR(100),
    encounterclass VARCHAR(100),
    code VARCHAR(100),
    description VARCHAR(100),
    base_encounter_cost DOUBLE,
    total_claim_cost DOUBLE,
    payer_coverage DOUBLE,
    reasoncode VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS immunizations (
    date DATETIME,
    patient VARCHAR(100),
    encounter VARCHAR(100),
    code INT,
    description VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS medications (
    start DATETIME,
    stop DATETIME,
    patient VARCHAR(100),
    payer VARCHAR(100),
    encounter VARCHAR(100),
    code VARCHAR(100),
    description VARCHAR(500),
    base_cost DOUBLE,
    payer_coverage DOUBLE,
    dispenses DOUBLE,
    totalcost DOUBLE
);

CREATE TABLE IF NOT EXISTS observations (
    date DATETIME,
    patient VARCHAR(100),
    encounter VARCHAR(100),
    category VARCHAR(100),
    code VARCHAR(100),
    description VARCHAR(500),
    value VARCHAR(500),
    units VARCHAR(100),
    type VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS organizations (
    id VARCHAR(100),
    name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(3),
    zip INT,
    lat DOUBLE,
    lon DOUBLE,
    phone VARCHAR(100),
    revenue DOUBLE,
    utilization INT
);

CREATE TABLE IF NOT EXISTS patients (
    id VARCHAR(100),
    birthdate DATE,
    deathdate DATE,
    ssn VARCHAR(100),
    drivers VARCHAR(100),
    passport VARCHAR(100),
    prefix VARCHAR(100),
    first VARCHAR(100),
    last VARCHAR(100),
    suffix VARCHAR(100),
    maiden VARCHAR(100),
    marital VARCHAR(100),
    race VARCHAR(100),
    ethnicity VARCHAR(100),
    gender VARCHAR(100),
    birthplace VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    county VARCHAR(100),
    fips INT,
    zip INT,
    lat DOUBLE,
    lon DOUBLE,
    healthcare_expenses DOUBLE,
    healthcare_coverage DOUBLE,
    income INT,
    mrn INT
);

CREATE TABLE IF NOT EXISTS payer_transitions (
    patient VARCHAR(100),
    memberid VARCHAR(100),
    start_date DATETIME,
    end_date DATETIME,
    payer VARCHAR(100),
    secondary_payer VARCHAR(100),
    plan_ownership VARCHAR(100),
    owner_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS payers (
    id VARCHAR(100),
    name VARCHAR(100),
    ownership VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state_headquartered VARCHAR(100),
    zip VARCHAR(100),
    phone VARCHAR(100),
    amount_covered DOUBLE,
    amount_uncovered DOUBLE,
    revenue DOUBLE,
    covered_encounters INT,
    uncovered_encounters INT,
    covered_medications INT,
    uncovered_medications INT,
    covered_procedures INT,
    uncovered_procedures INT,
    covered_immunizations INT,
    uncovered_immunizations INT,
    unique_customers INT,
    qols_avg DOUBLE,
    member_months INT
);

CREATE TABLE IF NOT EXISTS procedures (
    start DATETIME,
    stop DATETIME,
    patient VARCHAR(100),
    encounter VARCHAR(100),
    code VARCHAR(10),
    description VARCHAR(500),
    base_cost DOUBLE
);

CREATE TABLE IF NOT EXISTS providers (
    id VARCHAR(100),
    organization VARCHAR(100),
    name VARCHAR(100),
    gender VARCHAR(2),
    speciality VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(3),
    zip INT,
    lat DOUBLE,
    lon DOUBLE,
    encounters INT,
    procedures INT
);

CREATE TABLE IF NOT EXISTS supplies (
    date DATE,
    patient VARCHAR(100),
    encounter VARCHAR(100),
    quantity INT,
    description VARCHAR(100),
    code VARCHAR(100)
);

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/allergies.txt'
INTO TABLE allergies
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/careplans.txt'
INTO TABLE careplans
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/conditions.txt'
INTO TABLE conditions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/devices.txt'
INTO TABLE devices
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/encounters.txt'
INTO TABLE encounters
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Immunizations.txt'
INTO TABLE Immunizations
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Medications.txt'
INTO TABLE medications
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Observations.txt'
INTO TABLE Observations
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Organizations.txt'
INTO TABLE Organizations
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Patients.txt'
INTO TABLE Patients
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Payers.txt'
INTO TABLE Payers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Procedures.txt'
INTO TABLE Procedures
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Providers.txt'
INTO TABLE Providers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'C:/Users/Dinesh_Saini/Desktop/clinical data/Supplies.txt'
INTO TABLE Supplies
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


---
WITH active_pats AS (
    SELECT DISTINCT patient
    FROM encounters
    WHERE start BETWEEN '2021-01-01 00:00' AND '2022-12-31 23:59'
),
transplant AS (
    SELECT *
    FROM procedures
    WHERE code = '55.69'
),
esrd AS (
    SELECT
    cond.start AS condition_start,
    LEAST(COALESCE(trp.start, '2099-01-01'), COALESCE(cond.stop, '2099-01-01'), COALESCE(pat.deathdate, '2099-01-01')) AS esrd_end_date,
    cond.stop AS condition_stop, cond.patient, pat.first, pat.last, pat.race, pat.state, pat.county, pat.city, pat.birthdate, pat.deathdate, trp.start AS transplant_date, TIMESTAMPDIFF(YEAR, birthdate, '2022-12-31 23:59') AS age
    FROM conditions AS cond
    JOIN patients AS pat ON cond.patient = pat.id
    LEFT JOIN transplant AS trp ON cond.patient = trp.patient
    JOIN active_pats AS act ON cond.patient = act.patient
    WHERE cond.code = '585.6'
    AND (
    (cond.stop BETWEEN '2021-01-01 00:00' AND '2022-12-31 23:59') OR
    (cond.start BETWEEN '2021-01-01 00:00' AND '2022-12-31 23:59') OR
    (cond.start < '2021-01-01' AND cond.stop IS NULL) OR
    (cond.start < '2021-01-01' AND cond.stop > '2022-12-31')
    )
    AND (pat.deathdate IS NULL OR pat.deathdate > '2022-01-01')
    AND (trp.start IS NULL OR trp.start > '2022-01-01')
    ),
obs_date as (
    select cast('2022-01-01' as date) as obs_date
    union
    select cast('2022-02-01' as date) as obs_date
    union
    select cast('2022-03-01' as date) as obs_date
    union
    select cast('2022-04-01' as date) as obs_date
    union
    select cast('2022-05-01' as date) as obs_date
    union
    select cast('2022-06-01' as date) as obs_date
    union
    select cast('2022-07-01' as date) as obs_date
    union
    select cast('2022-08-01' as date) as obs_date
    union
    select cast('2022-09-01' as date) as obs_date
    union
    select cast('2022-10-01' as date) as obs_date
    union
    select cast('2022-11-01' as date) as obs_date
    union
    select cast('2022-12-01' as date) as obs_date
    union
    select cast('2022-01-01' as date) as obs_date
),
prep as (
    select obs.obs_date,
        esrd.condition_start,
        esrd.condition_stop,
        esrd.patient,
        esrd.first,
        esrd.last,
        esrd.race,
        esrd.state,
        esrd.county,
        esrd.city,
        esrd.birthdate,
        esrd.deathdate,
        esrd.transplant_date,
        esrd.age
    from obs_date as obs
    join esrd on obs.obs_date between esrd.condition_start and esrd.esrd_end_date
    ),
labs as (
    select patient,
            date as lab_date,
            DATE_FORMAT(date, '%Y-%m-01') AS month,
            code,
            description,
            value,
            row_number () over(partition by patient,code,DATE_FORMAT(date, '%Y-%m-01')  order by date asc) as number
    from Observations
    where code in ('49765-1','1751-7','2947-0','6299-2')
    and date between '2022-01-01 00:00' and '2022-12-31 23:59'
),
final as (
select prep.obs_date,
        prep.condition_start,
        prep.condition_stop,
        prep.patient,
        prep.first,
        prep.last,
        prep.race,
        prep.state,
        prep.county,
        prep.city,
        prep.birthdate,
        prep.deathdate,
        prep.transplant_date,
        prep.age,
        ca.value as calcium_value,
        na.value as sodium_value,
        alb.value as albumin_value,
        bun.value as bun_value
from prep
left join labs as ca on prep.patient = ca.patient
and prep.obs_date = ca.month
and ca.code = '49765-1'
and ca.number = 1
left join labs as na on prep.patient = na.patient
and prep.obs_date = na.month
and na.code = '2947-0'
and na.number = 1
left join labs as alb on prep.patient = alb.patient
and prep.obs_date = alb.month
and alb.code = '1751-7'
and alb.number = 1
left join labs as bun on prep.patient = bun.patient
and prep.obs_date = bun.month
and bun.code = '6299-2'
and bun.number = 1

)
select * from final;














