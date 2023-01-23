#!/bin/bash
# aws alias.
alias aws-gsv='aws secretsmanager get-secret-value --secret-id'
alias aws-ds='aws secretsmanager describe-secret --secret-id'
alias aws-ssm-gpv='aws ssm get-parameter --name'