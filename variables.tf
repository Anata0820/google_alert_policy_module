
variable "project_id" {
  description = "The ID of the Google Cloud project to create resources in"
  type        = string
}

variable "region" {
  description = "The Google Cloud region to create resources in"
  type        = string
}

variable "service_account_id" {
  description = "The ID of the service account to create"
  type        = string
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
}

variable "memory_alert_policy_display_name" {
  description = "The display name of the memory usage alert policy"
  type        = string
}

variable "memory_alert_policy_filter" {
  description = "The filter for the memory usage alert policy"
  type        = string
}

variable "cpu_alert_policy_display_name" {
  description = "The display name of the CPU usage alert policy"
  type        = string
}

variable "cpu_alert_policy_filter" {
  description = "The filter for the CPU usage alert policy"
  type        = string
}

variable "memory_per_series_aligner" {}

variable "cpu_per_series_aligner" {}

variable "memory_comparison" {}

variable "cpu_comparison" {}

variable "memory_alignment_period" {}
 
variable "cpu_alignment_period" {}

variable "memory_duration" {}

variable "cpu_duration" {}

variable "memory_combiner" {}

variable "cpu_combiner" {}

variable "notification_channel_type" {
  description = "The type of the notification channel"
  type        = string
}

variable "notification_channel_display_name" {
  description = "The display name of the notification channel"
  type        = string
}

variable "notification_channel_email_address" {
  description = "The email address for the notification channel"
  type        = string
}


