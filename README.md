# Expandable Buildkite Plugin

Expand properties with values

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - plugins:
      - xwlee/expandable#v1.0.0:
          files:
            - /path/to/file/a.txt
            - /path/to/file/b.txt
          directories:
            - /path/a
            - /path/b
          properties:
            HIRER_LOGIN_ID: ENV.login_id # env value
            HIRER_PASSWORD: ENV.password # env value
            LOG_LEVEL: error # string value
```

# License

MIT (see [LICENSE](LICENSE))
