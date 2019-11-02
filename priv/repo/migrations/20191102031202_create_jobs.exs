defmodule Timesheet.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :job_budget, :decimal
      add :job_code, :string
      add :job_desc, :string
      add :job_name, :string

      timestamps()
    end

  end
end
