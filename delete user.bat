:: This deletes the account local.user
net user local.user /delete 
:: This deletes the directory of local.user if present
rmdir /S /Q "C:\Users\local.user"
:: This creates new user and password
net user "local.user" "4Remote" /add
WMIC USERACCOUNT WHERE "Name='local.user'" SET PasswordExpires=FALSE
WMIC USERACCOUNT WHERE "Name='local.user'" SET Passwordchangeable=FALSE

pause
