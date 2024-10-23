resource "aws_cloudwatch_log_group" "diagnostics" {
  name              = "/aws/ec2/diagnostics"
  retention_in_days = 30
}

resource "aws_cloudwatch_log_stream" "stream" {
  name           = "diagnostics-stream"
  log_group_name = aws_cloudwatch_log_group.diagnostics.name
}
