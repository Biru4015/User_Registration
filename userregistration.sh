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
firstName
lastName
