defmodule Jompeak.Jompeak_record.Record do
  use Ecto.Schema
  import Ecto.Changeset

  schema "records" do
    field :amount_owe, :float
    field :currency, :string
    field :debtor_name, :string
    field :user_id, :id
    field :payment_status, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(record, attrs \\%{}) do
    record
    |> cast(attrs, [:debtor_name, :amount_owe, :currency, :user_id, :payment_status])
    |> validate_required([:debtor_name, :amount_owe, :currency])
  end

end
