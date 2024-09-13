resource "aws_cloudwatch_dashboard" "my_cloudwatch_dashboard" {
dashboard_name = "${var.app_group}-${lower(var.app_env)}-${var.app_name}-dashboard"
 dashboard_body = templatefile("${path.module}/dashboard-cloudwatch.json", 
  )
}
