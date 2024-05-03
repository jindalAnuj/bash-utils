#!/bin/bash
# aws alias.
alias aws-gsv='aws secretsmanager get-secret-value --secret-id'
alias aws-ds='aws secretsmanager describe-secret --secret-id'
alias aws-ssm-gpv='aws ssm get-parameter --name'



alias penv="python3 -m venv .venv"
alias pact="source .venv/bin/activate"
alias pdeact="deactivate"
alias pinst="pip install -r requirements.txt"
alias pfreeze="pip freeze > requirements.txt"