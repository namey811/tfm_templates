resource "google_service_account" "limited_sa" {
  account_id   = "sif-sandbox-sa"
  display_name = "SIF Sandbox Service Account"
}

resource "google_project_iam_member" "viewer_role" {
  project = var.project_id
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.limited_sa.email}"
}
