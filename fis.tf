resource "aws_fis_experiment_template" "example" {
  description = "example"
  role_arn    = aws_iam_role.fis.arn

  stop_condition {
    source = "none"
  }

  action {
    name      = "TerminateInstances"
    action_id = "aws:ec2:terminate-instances"

    target {
      key   = "Instances"
      value = local.name
    }
  }

  target {
    name           = local.name
    resource_type  = "aws:ec2:instance"
    selection_mode = "COUNT(1)"

    resource_tag {
      key   = "Name"
      value = local.name
    }
  }
}