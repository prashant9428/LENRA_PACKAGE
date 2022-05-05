  VERSION="v6.6.7"
  DRAFT="false"
  PRE="true"
  BRANCH="development"
  GITHUB_ACCESS_TOKEN="token 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"
  GENERATE_RELEASE_NOTES:"true"
  REPO_OWNER="prashant9428"
  REPO_NAME="test-package"

  API_JSON=$(printf '{"tag_name": "%s","target_commitish": "%s","name": "%s","draft": %s,"prerelease": %s, "generate_release_notes": %s}' "$NODE_VERSION" "$BRANCH" "$NODE_VERSION"  "$DRAFT" "$PRE" "$GENERATE_RELEASE_NOTES")
  API_RESPONSE_STATUS=$(curl --data "$API_JSON" --header 'Accept: application/vnd.github.v3+json' --header 'Authorization: token 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'  -s -i https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/releases)
  echo "$API_RESPONSE_STATUS"