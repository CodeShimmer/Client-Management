select domain_feedback from domain_feedback 
where domain_id=(select domain_id from cust_domain_reg where domain_name='xyz.com')

