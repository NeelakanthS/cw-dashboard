resource "aws_cloudwatch_dashboard" "my_cloudwatch_dashboard" {
dashboard_name = "${var.app_group}-${lower(var.app_env)}-${var.app_name}-dashboard"
 dashboard_body = templatefile("${path.module}/dashboard-cloudwatch.json", {
    log-group = "cloudtrail-log-group" # Log group of the cloudtrail or log group name where the ECR history/API Calls is stored
  })
}
