#!/bin/bash

set -euo pipefail

# Replace commas with spaces; bash will iterate over whitespace-separated tokens
for bucket in ${KEY_BUCKETS//,/ }; do
	aws s3 sync ./secret-agents "s3://$bucket/secret-agents"
done
