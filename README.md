# Expandable Buildkite Plugin

Expand properties with values

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      xwlee/expandable#v1.0.0:
        files:
          - /path/to/file/1
          - /path/to/file/2
        directories:
          - /path/1
          - /path/2
        properties:
          Hirer.login_id: ENV.login_id # env value
          Hirer.password: ENV.password # env value
          Debug.level: error # literal value

```
