resource "google_service_account" "limited_sa" {
  account_id   = "sif-sandbox-sa"
  display_name = "SIF Sandbox Service Account"
}

resource "google_project_iam_member" "storage_viewer" {
  project = var.project_id
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.limited_sa.email}"
}

resource "google_project_iam_member" "logging_viewer" {
  project = var.project_id
  role    = "roles/logging.viewer"
  member  = "serviceAccount:${google_service_account.limited_sa.email}"
}
