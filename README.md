# test-failover

- GET `/` 
  
  return text `helloworld` at beginning and return status 502 after 5min
  
- GET `/shutdown`

  return `ok` and make `/` return status 502
