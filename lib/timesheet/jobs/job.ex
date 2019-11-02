defmodule Timesheet.Jobs.Job do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jobs" do
    field :job_budget, :decimal
    field :job_code, :string
    field :job_desc, :string
    field :job_name, :string

    timestamps()
  end

  @doc false
  def changeset(job, attrs) do
    job
    |> cast(attrs, [:job_budget, :job_code, :job_desc, :job_name])
    |> validate_required([:job_budget, :job_code, :job_desc, :job_name])
  end
end
