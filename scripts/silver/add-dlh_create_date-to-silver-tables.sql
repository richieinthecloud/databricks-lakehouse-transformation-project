-- i forgot to add a column that reflects the creation date of the databricks records
-- i was able to retroactively add them in to their respective silver tables
-- additionally, this helps demonstrate the version tracking and 'time travel' feature
-- the alter/add column is one part of the ddl statement
-- update/set are the 2nd part. you can't run them together. 

alter table silver_crm_cust_info
add column dlh_create_date timestamp;
update silver_crm_cust_info
set dlh_create_date = current_timestamp();


alter table silver_crm_prd_info
add column dlh_create_date timestamp;
update silver_crm_prd_info
set dlh_create_date = current_timestamp();

alter table silver_erp_loc_a_101
add column dlh_create_date timestamp;
update silver_erp_loc_a_101
set dlh_create_date = current_timestamp();


alter table silver_px_cat_g_1_v_2
add column dlh_create_date timestamp;

update silver_px_cat_g_1_v_2
set dlh_create_date = current_timestamp();
