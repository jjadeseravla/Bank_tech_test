# Bank_tech_test

My attempt at a practice tech test.

This practice session is about producing the best code I can when there is a minimal time pressure and practice my OO design and TDD skills.

## Intro

Bank_tech_test is built on Ruby, and allows deposits and withdrawals of money to be done, as well as displaying the date of the bank account was debited or credited, and a history of this.

## How to use

- clone this repo
- install adequate gems
- bundle install
- run rspec to make sure all tests pass on your console
- Play away on your command line using IRB or PRY.

User Stories

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

Thoughts

- I was unsure as to how many edge cases to include in this project.
- I decided to create a separate class for Log, which included the transaction in order to wrap the transaction array in its own class.  I then included two private methods in the Bank class that can be called on when the money_deposited or money_withdrawn methods are called, in order for the user to see a little history of statements.  I was unsure as to whether this was a good way to approach it, or to create a new class altogether for printing a statement.
- I was also unsure if my testing was adequate and whether I should include any feature tests, as this is heavily back end based.
