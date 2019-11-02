# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Timesheet.Repo.insert!(%Timesheet.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Timesheet.Repo
alias Timesheet.Users.User
alias Timesheet.Jobs.Job

Repo.insert!(%User{name: "Alice Anderson", email: "alice@acme.com", isManager: true, password: "password1234"})
Repo.insert!(%User{name: "Bob Anderson", email: "bob@acme.com", isManager: true, password: "password1234"})
Repo.insert!(%User{name: "Carol Anderson", email: "carol@acme.com", isManager: false, password: "password1234"})
Repo.insert!(%User{name: "Dave Anderson", email: "dave@acme.com", isManager: false, password: "password1234"})

Repo.insert!(%Job{job_name: "Cyborg Arm", job_code: "VAOR-01", job_desc: "(1)", job_budget: 20.0})
Repo.insert!(%Job{job_name: "Sobriety Pill", job_code: "VAOR-02", job_desc: "(1)", job_budget: 45.0})
Repo.insert!(%Job{job_name: "Rat Cancer", job_code: "VAOR-03", job_desc: "(1)", job_budget: 12.0})
