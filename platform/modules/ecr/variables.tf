variable "project_names" {
  description = "List of project names to create ECR repositories for"
  type        = list(string)

  validation {
    condition     = length(var.project_names) > 0
    error_message = "At least one project name must be provided."
  }
}
