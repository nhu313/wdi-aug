gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'account'

class AccountTest < Minitest::Test

  def test_create_account
    assert Account.new
  end

  def test_new_account_balance
    skip
    a = Account.new
    assert a.balance == 0
  end

  def test_deposit
    skip
    deposit_amount = 199

    account = Account.new
    account.deposit = deposit_amount

    assert account.balance == deposit_amount
  end

  def test_deposit_twice
    skip
    account = Account.new
    account.deposit = 100
    account.deposit = 50

    assert account.balance == 150
  end
end
