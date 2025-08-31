#the email
email = " USER@DOMAIN.COM"

# 1.clean and format 
clean_email = email.strip().lower()#strip():remove spaces and lines/ lower():convert all character to small   
print("format email:", clean_email)

# 2.divide into username and domain
username, domain = clean_email.split('@')  #split():separate the parts after and before ('@')
print("Username:", username)
print("Domain:", domain)

# 3.use f-string to format output
result = f"Username: {username}, Domain: {domain}"
print(result)
