defmodule Example.Router do
  use Commanded.Commands.Router

  alias Example.BankAccount
  alias Example.BankAccount.Commands.{
    OpenAccount,
    CloseAccount,
    DepositMoney,
    WithdrawMoney,
  }

  dispatch [
    OpenAccount,
    CloseAccount,
    DepositMoney,
    WithdrawMoney,
    ], to: BankAccount, identity: :account_number
end
