# HTPAPI




## API 

### Sign Up

* Path: `POST '/users/register'`
* Params:
	* email: a string
	* password: a string

* Response: 
	* Status Code: 201 if successful, 422 if unsuccessful
	* Example Success:
	```
{
  "user": {
    "id": 1,
    "email": "test@email.com",
    "access_token": "cf056d433a36da1b52667ab896aee4a4"
  }
}
	``` 
	* Example Failure:
	```
{
  "errors": [
    "Email has already been taken"
  ]
}
	```