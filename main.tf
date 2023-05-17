
provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_monitoring_alert_policy" "memory_alert_policy" {
  display_name = var.memory_alert_policy_display_name
  combiner     = var.memory_combiner
  conditions {
    display_name = var.memory_alert_policy_display_name
    condition_threshold {
      filter     = var.memory_alert_policy_filter
      duration   = var.memory_duration
      comparison = var.memory_comparison
      aggregations {
        alignment_period   = var.memory_alignment_period
        per_series_aligner = var.memory_per_series_aligner
      }
    }
  }
  /* user_labels = {
    created = "by-terraform"
    owner = "salta"
  } */
}

resource "google_monitoring_alert_policy" "cpu_alert_policy" {
  display_name = var.cpu_alert_policy_display_name
  combiner     = var.cpu_combiner
  conditions {
    display_name = var.cpu_alert_policy_display_name
    condition_threshold {
      filter     = var.cpu_alert_policy_filter
      duration   = var.cpu_duration
      comparison = var.cpu_comparison
      aggregations {
        alignment_period   = var.cpu_alignment_period
        per_series_aligner = var.cpu_per_series_aligner
      }
    }
  }
  /*user_labels = {
    created = "by-terraform"
    owner = "salta"
  }*/
}

resource "google_monitoring_notification_channel" "email" {
  display_name = var.notification_channel_display_name
  type = var.notification_channel_type
  labels = {
    email_address = var.notification_channel_email_address
  }
}

