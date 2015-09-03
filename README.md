Exercise to understand ruby objects.

## Getting started
1. Download the files `git clone https://github.com/nhu313/wdi-aug.git`
2. Navigate into the exercise you want to do ex: `cd week3/bank_account/`
3. Run the test `ruby account_test.rb`
4. Make the first test pass
5. Remove `skip` on the second test and make that test pass.
6. Continue until all skip is removed and all tests pass.

### Getting the first test to pass
1. Navigate into the exercise `cd week3/bank_account/`
2. Run the test `ruby account_test.rb`
3. You should see an error like like this:

  ```bash
  account_test.rb:4:in `require_relative': cannot load such file -- wdi-aug/week3/bank_account/account (LoadError)
	from account_test.rb:4:in `<main>'
	```
	
	If you read the code carefully, you will see it said it tried to load a file required on line 4, 
	which is a file named `account`, but it couldn't load. That's because we don't have a file called `account`. 
	To fix this, create a file named `account.rb` in the same directory.
	Note that my require statement on line 4 says `require_relative 'account'` without `.rb` at the end, but the file 
	should end with `.rb`.
4. Run the test again. You should get this error.

  ```bash
  SSSE

  Fabulous run in 0.002324s, 1721.0423 runs/s, 0.0000 assertions/s.

	1) Error:
AccountTest#test_create_account:
NameError: uninitialized constant AccountTest::Account
    account_test.rb:9:in `test_create_account'
	```

  Note that you see SSSE. That means there 3 skip tests (i.e. SSS) and one failed test (i.e. E). 
  The error is in the test, on line 9, it refers to a contants called Account, but it doesn't know what Account is.
  Let's fix that by creating an account. In the `account.rb` file, type in this code:
  
  ```ruby
  class Account

  end
  ```
  
5. Run the test again. You should see something like this:

  ```bash
      # Running:
    
    .SSS
    
    Fabulous run in 0.000957s, 4180.2787 runs/s, 1045.0697 assertions/s.
    
    4 runs, 1 assertions, 0 failures, 0 errors, 3 skips

  ```
  
  Notice instead of an `E` you see a `.` that means the test passed. The `SSS` indicates how many skipped test you have.
