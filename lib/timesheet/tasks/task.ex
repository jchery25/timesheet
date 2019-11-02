defmodule Timesheet.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :job_code, :string
    field :note, :string
    field :number_of_hours, :decimal
    field :uuid, :string


    belongs_to :user, Timesheet.Users.User
    belongs_to :job, Timesheet.Jobs.Job

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:job_code, :number_of_hours, :note, :user_id])
    |> validate_required([:job_code, :number_of_hours, :note, :user_id])
    |> generate_uuid()
  end

  def make_uuid() do
    :crypto.strong_rand_bytes(16)
    |> Base.encode16
  end

  def generate_uuid(cset) do
    if get_field(cset, :uuid) do
      cset
    else
      put_change(cset, :uuid, make_uuid())
    end
  end
end
