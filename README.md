# Sync GitHub to GitLab Action

This GitHub action syncs a GitHub repository to a GitLab repository as a mirror.

## Usage

```yaml
steps:
    - uses: actions/checkout@v2
    - uses: adambirds/sync-github-to-gitlab@v1.0.0
      with:
        destination_repository: git@gitlab.com:adambirds/sync-github-to-gitlab.git
        destination_branch_name: main
        destination_ssh_key: ${{ secrets.GITLAB_SSH_KEY }}
```

## Inputs

### `destination_repository`

**Required** The SSH URL of the GitLab repository to sync to.

### `destination_branch_name`

**Not Required** The branch of the GitLab repository to sync to. Defaults to `main`.

### `destination_ssh_key`

**Required** The SSH key to use to authenticate with the GitLab repository.

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
