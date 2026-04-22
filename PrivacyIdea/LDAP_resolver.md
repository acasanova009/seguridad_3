# LDAP Resolver (privacyIDEA)

## Connection

- **Resolver name:** LDAPResolver1  
- **Server URI:** ldap://ldap_server  
- **STARTTLS:** OFF  
- **TLS Version:** default  
- **Verify TLS:** OFF  

- **Base DN:** dc=nova,dc=org  
- **Scope:** SUBTREE  

- **Bind Type:** Simple  
- **Bind DN:** cn=admin,dc=nova,dc=org  
- **Bind Password:** admin  

- **Timeout:** 5  
- **Cache Timeout:** 120  
- **Size Limit:** 500  
- **Server pool retry rounds:** 2  
- **Server pool skip timeout:** 30  

- **Per-process server pool:** OFF  
- **Edit user store:** OFF  

---

## User Configuration (OpenLDAP)

- **Loginname Attribute:** uid  
- **Search Filter:** (objectClass=inetOrgPerson)  
- **Attribute mapping:**  
  ```json
  { 
  "phone": "telephoneNumber",
  "mobile": "mobile",
  "email": "mail",
  "surname": "sn",
  "givenname": "givenName"
}

Multivalue Attributes: ["mobile"]
UID Type: DN

Advanced Options
Recursive Search of User Groups: OFF
No anonymous referral chasing: OFF
No retrieval of schema information: OFF