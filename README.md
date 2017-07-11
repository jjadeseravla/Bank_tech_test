# Bank_tech_test

My attempt at a practice tech test.

This practice session is about producing the best code I can when there is a minimal time pressure and practice my OO design and TDD skills.

## Intro

Bank_tech_test built on Ruby that allows deposits and withdrawals.
Account statement (date, amount, balance) printing can be seen.

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement, she would see:

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00


## How to use

- clone this repo
- run rspec to make sure all tests pass on your console
- Play away on your command line using IRB or PRY.

##User Stories

```
As a user,
so that I can put money into my account,
I want to top up my account.

As a user,
so I can take money out,
I want to be able to withdraw money from my account.

As a user,
so that I can keep track of my withdrawals,
I want to see a statement of how much money is taken out.

As a user,
so that I can keep track of my deposits,
I want to see a statement of how much money I have put in.

As a user,
so I can keep track of my transactions,
I want to see a statement of my balance with the date of transaction.
```

##Thoughts

I was unsure as to how many edge cases to include in this project.  
