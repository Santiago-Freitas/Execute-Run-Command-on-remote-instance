resource "aws_cloudwatch_event_rule" "run_script" {
  name_prefix         = "Run-Script-"
  description         = "Run Command on Schedule"
  schedule_expression = var.schedule_expression
}

resource "aws_cloudwatch_event_target" "script-runner" {
  arn      = "arn:aws:ssm:${var.aws_region}::document/AWS-RunShellScript"
  role_arn = aws_iam_role.run_command_role.arn
  input    = <<CMD
{
  "commands": [
    "./script.sh"
  ],
  "workingDirectory": [
    "/home/ssm-user"
  ]
}
    CMD
  rule     = aws_cloudwatch_event_rule.run_script.name

  run_command_targets {
    key    = "InstanceIds"
    values = [module.ec2_instance_1.id]
  }
}