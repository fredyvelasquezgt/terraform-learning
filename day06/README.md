# Day 04

## Key Learnings

- **Terraform state:** The state file (`terraform.tfstate`) is Terraform's record of the infrastructure that actually exists in AWS. It maps each resource in my code to the real resource it created (IDs, ARNs, attributes), so Terraform knows what to create, update, or destroy on the next run.
- **State is sensitive:** The state can contain secrets and details about my infrastructure, so it must be kept private and never committed to Git.
- **Remote backend:** When working in a team, the state should live in a shared, secure location instead of on one person's machine. A common choice is an encrypted S3 bucket, configured as a **backend** in the `terraform` block.
- **Backend and `init`:** The backend is configured when the project is initialized with `terraform init`, which connects Terraform to the bucket where the state is stored.
- **State locking:** `use_lockfile = true` makes Terraform lock the state while someone runs `plan` or `apply`, so two people can't modify the same infrastructure at the same time.

## `main.tf` vs. state

|                | `main.tf` (code)                          | `terraform.tfstate` (state)                     |
|----------------|-------------------------------------------|-------------------------------------------------|
| What it is     | The infrastructure I **want**             | The infrastructure that **exists**              |
| Who writes it  | Me                                        | Terraform, automatically                        |
| Commit to Git? | ✅ Yes                                     | ❌ No: it goes in the S3 backend                 |
