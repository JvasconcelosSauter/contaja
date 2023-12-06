resource "google_folder" "mk_folder" {
  display_name  = var.folder_name
  parent = "organizations/${var.org_id}"
}

resource "google_project" "mk_project" {
  name = var.project_name
  project_id = var.project_id
  folder_id = google_folder.mk_folder.id

  depends_on = [ google_folder.mk_folder ]
}