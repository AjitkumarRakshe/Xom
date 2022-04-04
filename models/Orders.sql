SELECT 
cast(_id as string) as UNIQUE_ID,
cast(_id as string) as _ID
,cast(_constructed as timestamp) as _CONSTRUCTED
,cast(_deleted as BOOLEAN) as _DELETED
,_updated  as _UPDATED
,cast(_version as float64) as _VERSION
,cast(assembly_required as BOOLEAN) as ASSEMBLY_REQUIRED
,cast(auto_outsourcing_failed as BOOLEAN) as AUTO_OUTSOURCING_FAILED
,cast(billing_account as string) as BILLING_ACCOUNT
,cast(calculation_time as FLOAT64) as CALCULATION_TIME
,cast(can_auto_outsource as BOOLEAN) as CAN_AUTO_OUTSOURCE
,cast(coupon as  String) as COUPON
,cast(due_date as timestamp) as DUE_DATE
,economy_agreed  as ECONOMY_AGREED
,cast(gaclientid as string) as GACLIENTID
,cast(gclid as string) as GCLID
,cast(hs_dealid as string) as HS_DEALID
,cast(JSON_EXTRACT(LAST_HISTORY, "$._cls") as string) as LAST_HISTORY__CLS
,cast(JSON_EXTRACT(LAST_HISTORY, "$.staff") as string) as LAST_HISTORY_STAFF
,cast(JSON_EXTRACT(LAST_HISTORY, "$.status") as string)  as LAST_HISTORY_STATUS
,JSON_EXTRACT(LAST_HISTORY, "$.time") as LAST_HISTORY_TIME
,cast(last_updated as TIMESTAMP) as LAST_UPDATED
,JSON_EXTRACT(lead_time,"$.days")  as LEAD_TIME_DAYS
,JSON_EXTRACT(lead_time,"$.manual")  as LEAD_TIME_MANUAL #Need to convert into int
,JSON_EXTRACT(lead_time,"$.order_cutoff_time_since_midnight")   as LEAD_TIME_ORDER_CUTOFF_TIME_SINCE_MIDNIGHT
,cast(JSON_EXTRACT(lead_time,"$.staff") as string) as LEAD_TIME_STAFF
,likelihood  as LIKELIHOOD
,cast(JSON_EXTRACT(line_items,"$.certifications") as FLOAT64) as LINE_ITEMS_CERTIFICATIONS
,JSON_EXTRACT(line_items,"$.discount") as LINE_ITEMS_DISCOUNT
,JSON_EXTRACT(line_items,"$.points_earned") as LINE_ITEMS_POINTS_EARNED
,JSON_EXTRACT(line_items,"$.points_redeemed") as LINE_ITEMS_POINTS_REDEEMED
,JSON_EXTRACT(line_items,"$.points_redeemed_value") as LINE_ITEMS_POINTS_REDEEMED_VALUE
,JSON_EXTRACT(line_items,"$.shipping") as LINE_ITEMS_SHIPPING
,JSON_EXTRACT(line_items,"$.shipping_discount") as LINE_ITEMS_SHIPPING_DISCOUNT
,JSON_EXTRACT(line_items,"$.tax") as LINE_ITEMS_TAX
,cast(JSON_EXTRACT(line_items,"$.carbon_offset") as FLOAT64) as LINE_ITEMS_CARBON_OFFSET
,cast(notes as string) as NOTES
,cast(JSON_EXTRACT(order_feedback,"$.customer_experience") as string) as ORDER_FEEDBACK_CUSTOMER_EXPERIENCE
,cast(JSON_EXTRACT(order_feedback,"$.customer_feedback") as string) as ORDER_FEEDBACK_CUSTOMER_FEEDBACK
,JSON_EXTRACT(order_feedback,"$.customer_rating") as ORDER_FEEDBACK_CUSTOMER_RATING
,JSON_EXTRACT(order_feedback,"$.customer_submitted") as ORDER_FEEDBACK_CUSTOMER_SUBMITTED
,JSON_EXTRACT(order_feedback,"$.inspection_rating") as ORDER_FEEDBACK_INSPECTION_RATING
,order_time as ORDER_TIME
,original_due_date as ORIGINAL_DUE_DATE
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.city") as string) as PAYMENT_BILLING_ADDRESS_CITY
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.country") as string) as PAYMENT_BILLING_ADDRESS_COUNTRY
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.email_address") as string) as PAYMENT_BILLING_ADDRESS_EMAIL_ADDRESS
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.name") as string) as PAYMENT_BILLING_ADDRESS_NAME
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.phone_ext") as string) as PAYMENT_BILLING_ADDRESS_PHONE_EXT
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.phone_number") as string) as PAYMENT_BILLING_ADDRESS_PHONE_NUMBER
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.province") as string) as PAYMENT_BILLING_ADDRESS_PROVINCE
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.state") as string) as PAYMENT_BILLING_ADDRESS_STATE
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.street1") as string) as PAYMENT_BILLING_ADDRESS_STREET1
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.street2") as string) as PAYMENT_BILLING_ADDRESS_STREET2
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.country_code") as string) as BILLING_ADDRESS_COUNTRY_CODE
,JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.validated")  as PAYMENT_BILLING_ADDRESS_VALIDATED
,JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.validation_exempt")  as PAYMENT_BILLING_ADDRESS_VALIDATION_EXEMPT
,cast(JSON_EXTRACT(JSON_EXTRACT(payment ,"$.billing_address"),"$.zipcode") as string) as PAYMENT_BILLING_ADDRESS_ZIPCODE
,cast(JSON_EXTRACT(payment,"$.original_ip") as string) as PAYMENT_ORIGINAL_IP
,cast(JSON_EXTRACT(payment,'$.po_file[0]._cls') as string) as PAYMENT_PO_FILE__CLS
,cast(JSON_EXTRACT(payment,'$.po_file[0].bucket') as string)  as PAYMENT_PO_FILE_BUCKET
,cast(JSON_EXTRACT(payment,'$.po_file[0].md5') as string) as PAYMENT_PO_FILE_MD5
,cast(JSON_EXTRACT(payment,'$.po_file[0].original_filename') as string)  as PAYMENT_PO_FILE_ORIGINAL_FILENAME
,JSON_EXTRACT(payment,'$.po_file[0].private')   as PAYMENT_PO_FILE_PRIVATE
,cast(JSON_EXTRACT(payment,'$.po_file[0].s3_key') as string) as PAYMENT_PO_FILE_S3_KEY
,JSON_EXTRACT(payment,'$.po_file[0].upload_time') as PAYMENT_PO_FILE_UPLOAD_TIME
,cast(JSON_EXTRACT(payment,"$.po_number") as string) as PAYMENT_PO_NUMBER
,cast(JSON_EXTRACT(payment,"$.type") as string) as PAYMENT_TYPE
,cast(JSON_EXTRACT(payment,"$.user_agent") as string) as PAYMENT_USER_AGENT
,cast(JSON_EXTRACT(pdf,"$._cls") as string) as PDF__CLS
,cast(JSON_EXTRACT(pdf,"$.bucket") as string)  as PDF_BUCKET
,cast(JSON_EXTRACT(pdf,"$.md5") as string)  as PDF_MD5
,JSON_EXTRACT(pdf,"$.private")   as PDF_PRIVATE
,cast(JSON_EXTRACT(pdf,"$.s3_key") as string)  as PDF_S3_KEY
,JSON_EXTRACT(pdf,"$.upload_time")  as PDF_UPLOAD_TIME
,cast(phone_abtest_group as string)  as PHONE_ABTEST_GROUP
,cast(phone_number as string) as PHONE_NUMBER
,cast(selected_price_tier as string) as SELECTED_PRICE_TIER
,cast(JSON_EXTRACT(shipping ,"$.account_number") as string ) as SHIPPING_ACCOUNT_NUMBER
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.city") as string ) as SHIPPING_ADDRESS_CITY
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.country") as string ) as SHIPPING_ADDRESS_COUNTRY
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.email_address") as string ) as SHIPPING_ADDRESS_EMAIL_ADDRESS
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.name") as string ) as SHIPPING_ADDRESS_NAME
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.phone_ext") as string ) as SHIPPING_ADDRESS_PHONE_EXT
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.phone_number") as string ) as SHIPPING_ADDRESS_PHONE_NUMBER
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.province") as string ) as SHIPPING_ADDRESS_PROVINCE
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.state") as string ) as SHIPPING_ADDRESS_STATE
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.street1") as string ) as SHIPPING_ADDRESS_STREET1
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.street2") as string ) as SHIPPING_ADDRESS_STREET2
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.country_code") as string ) as SHIPPING_ADDRESS_COUNTRY_CODE
,JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.validated")   as SHIPPING_ADDRESS_VALIDATED
,JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.validation_exempt") as SHIPPING_ADDRESS_VALIDATION_EXEMPT
,cast(JSON_EXTRACT(JSON_EXTRACT(shipping ,"$.address"),"$.zipcode") as string ) as SHIPPING_ADDRESS_ZIPCODE
,JSON_EXTRACT(shipping ,"$.bill_receiver") as SHIPPING_BILL_RECEIVER
,cast(JSON_EXTRACT(shipping ,"$.error") as string ) as SHIPPING_ERROR
,cast(JSON_EXTRACT(shipping ,"$.estimated_cost") as float64 )  as SHIPPING_ESTIMATED_COST
,JSON_EXTRACT(shipping ,"$.estimated_shipment_date") as SHIPPING_ESTIMATED_SHIPMENT_DATE
,JSON_EXTRACT(shipping ,"$.fob")   as SHIPPING_FOB
,cast(JSON_EXTRACT(shipping ,"$.instructions") as string ) as SHIPPING_INSTRUCTIONS
,cast(JSON_EXTRACT(shipping ,"$.method") as string ) as SHIPPING_METHOD
,JSON_EXTRACT(shipping ,"$.number_of_parcels")  as SHIPPING_NUMBER_OF_PARCELS
,JSON_EXTRACT(shipping ,"$.original_estimated_delivery")  as SHIPPING_ORIGINAL_ESTIMATED_DELIVERY
,cast(JSON_EXTRACT(shipping ,"$.service") as string ) as SHIPPING_SERVICE
,JSON_EXTRACT(shipping ,"$.transit_days")   as SHIPPING_TRANSIT_DAYS
,cast(staff_creator as string)  as STAFF_CREATOR
,cast(staff_modifier as string )  as STAFF_MODIFIER
,cast(staff_owner as string) as STAFF_OWNER
,subtotal  as SUBTOTAL
,total as TOTAL
,cast(user as string) as USER
,cast(user_agent as string) as USER_AGENT
,cast(user_email as string) as USER_EMAIL
,cast(JSON_EXTRACT(parent_order ,"$.order_id") as string ) as PARENT_ORDER_ORDER_ID
,cast(JSON_EXTRACT(parent_order ,"$.zendesk_id") as string ) as PARENT_ORDER_ZENDESK_ID
,JSON_EXTRACT(carbon_offset ,"$.co2_pounds")  as CARBON_OFFSET_CO2_POUNDS
,cast(JSON_EXTRACT(carbon_offset ,"$.percentage_offset") as float64 ) as CARBON_OFFSET_PERCENTAGE_OFFSET
,cast(JSON_EXTRACT(carbon_offset ,"$.selected_organization") as string ) as CARBON_OFFSET_SELECTED_ORGANIZATION
,cast(staff_pod as string) as STAFF_POD
,_FIVETRAN_SYNCED as _FIVETRAN_SYNCED
From xomgcp.Xom_dataset.Orders