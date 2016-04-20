select  count(*) from personal_details

select max(customer_id) from personal_details

select * from personal_details

select * from weight_table;

select * from health_plan_services

select * from personal_details

update personal_details set married = 'N';

update personal_details set age = 20;

delete from personal_details where customer_name != 'EFG'

commit;

select pd.age, pd.married, pd.number_of_children,hd.plan_id, hd.plan_marketing_name, hd.CHILD_ONLY_OFFERING, hd.ADULT_DENTAL, hd.CHILD_DENTAL, hd.PREMIUM_CHILD, hd.PREM_ADULT_IND_AGE_21,hd.PREM_ADULT_IND_AGE_27, hd.PREM_ADULT_IND_AGE_30, hd.PREM_ADULT_IND_AGE_40,hd.PREM_ADULT_IND_AGE_50, hd.PREM_ADULT_IND_AGE_60, hd.PREM_COUPLE_21, hd.PREM_COUPLE_30, hd.PREM_COUPLE_40, hd.PREM_COUPLE_50, hd.PREM_COUPLE_60, hd.COUPLE1_CHILD_AGE_21, hd.COUPLE1_CHILD_AGE_30, hd.COUPLE1_CHILD_AGE_40, hd.COUPLE1_CHILD_AGE_50, hd.COUPLE2_CHILDREN_AGE_21, hd.COUPLE2_CHILDREN_AGE_30, hd.COUPLE2_CHILDREN_AGE_40, hd.COUPLE2_CHILDREN_AGE_50, hd.COUPLE3_OR_MORE_CHILDREN_AGE_21, hd.COUPLE3_OR_MORE_CHILDREN_AGE_30, hd.COUPLE3_OR_MORE_CHILDREN_AGE_40, hd.COUPLE3_OR_MORE_CHILDREN_AGE_50, hd.IND1_CHILD_AGE_21, hd.IND1_CHILD_AGE_30,hd.IND1_CHILD_AGE_40, hd.IND1_CHILD_AGE_50, hd.IND2_CHILD_AGE_21, hd.IND2_CHILD_AGE_30, hd.IND2_CHILD_AGE_40, hd.IND2_CHILD_AGE_50, hd.IND3_OR_MORE_CHILDREN_AGE_21, hd.IND3_OR_MORE_CHILDREN_AGE_30, hd.IND3_OR_MORE_CHILDREN_AGE_40, hd.IND3_OR_MORE_CHILDREN_AGE_50, hd.MED_DED_IND_STD, hd.MED_DED_FAM_STD,hps.Service_Allergy, hps.Service_Abortion, hps.Service_Acupuncture, hps.Service_BabyCare, hps.Service_Cancer, hps.Service_Cardiac, hps.Service_Chiropractic_Care, hps.Service_Cosmetic_Surgery ,hps.Service_Dental , hps.Service_Diabetes, hps.Service_EyeCare, hps.Service_Habilitation, hps.Service_Immunization,hps.Service_Infertility, hps.Service_Mammogram, hps.Service_MentalHealth, hps.Service_Nursing,hps.Service_PostNatal, hps.Service_PreNatal, hps.Service_Referral, hps.Service_Rehabilitation , hps.Service_Surgery, hps.Service_Urgent_Care , hps.Service_Weight_Loss, hps.Service_X_Ray from hidata_new hd, personal_details pd, health_plan_services hps where hd.state_code = pd.state_code and hd.county_name = pd.county_name and hd.plan_marketing_name = hps.planName and (service_allergy > 0 OR service_abortion > 0 OR Service_Acupuncture > 0 OR Service_BabyCare > 0 OR Service_Cancer > 0 OR Service_Cardiac > 0 OR Service_Chiropractic_Care > 0 OR Service_Cosmetic_Surgery > 0 OR Service_Dental > 0 OR Service_Diabetes > 0 OR Service_EyeCare > 0 OR Service_Habilitation > 0 OR Service_Immunization > 0 OR Service_Infertility > 0 OR Service_Mammogram > 0 OR Service_MentalHealth > 0 OR Service_Nursing > 0 OR Service_PostNatal > 0 OR Service_PreNatal > 0 OR Service_Referral > 0 OR Service_Rehabilitation > 0 OR Service_Surgery > 0 OR Service_Urgent_Care > 0 OR Service_Weight_Loss > 0 OR Service_X_Ray > 0 ) and pd.state_code = 'ME' and pd.county_name = 'Lincoln' and pd.customer_id =  ( select max(customer_id) from personal_details )

select * from hidata_new
where state_code = 'ME'
and county_name = 'Lincoln';

CREATE TABLE weight_table(

v_customer_id varchar2(100),
v_plan_id varchar2(25),
v_plan_marketing_name varchar2(25),
v_premium number,
v_deductible number,
v_service_score number,
v_cost_score number,
v_final_score number
)

commit;

delete from weight_table;

commit;

select * from weight_table;

INSERT INTO weight_table values(1,'96667ME0240002','Gold HMO 1000','386.82','1000',0.02,0,0)

INSERT INTO weight_table values(1,'96667ME0240003','Silver HMO','292.43','2000',0.01,0,0)

INSERT INTO weight_table values(1,'96667ME0240002','Gold HMO 1000','386.82','1000',0.02,0,0)

INSERT INTO weight_table values(1,'96667ME0240003','Silver HMO','292.43','2000',0.01,0,0)

UPDATE weight_table set v_premium = v_premium/386.82, v_deductible = v_deductible/2000.0 where v_customer_id = 1

rollback

select  v_premium/386.82 as new_premium from weight_table;

select * from health_and_habits;

create table health_and_habits_bk as select * from health_and_habits;

delete from health_and_habits where customer_id != '1'

commit;

update health_and_habits set allergy='Y', diabetes='Y', mental_health='N', alcohol='N'

select * from health_plan_services;

select * from health_and_habits;

update health_plan_services
set service_allergy = '1'
where planName like 'Gold%';

select * from weight_table

delete from weight_table

commit;