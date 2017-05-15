defmodule Example do
  alias Example.Router
  alias Example.BankAccount.Commands.{
    CloseAccount,
    DepositMoney,
    OpenAccount,
    WithdrawMoney,
  }

  def run do
    :ok = Router.dispatch(%OpenAccount{account_number: "ACC123", initial_balance: 1_000})
    :ok = Router.dispatch(%DepositMoney{account_number: "ACC123", amount: 100, transfer_uuid: "TRAN001"})
    :ok = Router.dispatch(%WithdrawMoney{account_number: "ACC123", amount: 50, transfer_uuid: "TRAN002"})
    :ok = Router.dispatch(%CloseAccount{account_number: "ACC123"})
  end
end
