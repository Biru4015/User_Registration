#! /bin/bash
shopt -s extglob
firstName()
{
   echo "Enter your first name:"
   read firstname
   fname="^[A-Z][a-z]{2,}$"
     if [[ $firstname =~ $fname ]]
     then
         echo "First name is valid."
     else
         echo "First name is not valid"
     fi
}
lastName()
{
   echo -e "Enter your last name:\c"
   read lastname
   lname="^([A-Z])([a-z]{2,})$"
     if [[ $lastname =~ $lname ]]
     then
         echo "Last name is valid."
     else
         echo "Last name is not valid"
     fi
}
email()
{
   echo "Enter any email"
   read email
   emailid="^([a-z]+)(\.[a-z0-9_\+\-]+)?@([a-z]+)\.([a-z]{2,4})(\.[a-z]{2})?$"
     if [[ $email =~ $emailid ]]
     then
         echo "VALID EMAIL"
     else
         echo "INVALID EMAIL"
     fi
}
mobileNumber()
{
   echo "Enter your mobile number"
   read mobileno
   mobile="^[0-9]{2}[[:space:]][0-9]{10}$"
     if [[ $mobileno =~ $mobile ]]
     then
         echo "Your mobile number is valid"
     else
         echo "Please enter a valid mobile number"
     fi
}
firstName
lastName
email
mobileNumber
