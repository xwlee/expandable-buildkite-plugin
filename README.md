# Expandable Buildkite Plugin

A [Buildkite plugin](https://buildkite.com/docs/agent/v3/plugins) to expand properties in files with values.

## Example

### Expand a property in a file

```yaml
steps:
  - plugins:
      - xwlee/expandable#v1.0.0:
          files:
            - /path/to/file/config.josn
          properties:
            LOG_LEVEL: error # string value
```

In your code, add the property surrounded by `%property%`

```json
{
  "baseUrl": "https://example.com",
  "log_level": "%LOG_LEVEL%"
}
```

### Expand properties in a file with env values

You can use `ENV.` to specify an env value

```yaml
steps:
  - plugins:
      - xwlee/expandable#v1.0.0:
          files:
            - /path/to/file/config.json
          properties:
            HIRER_LOGIN_ID: ENV.login_id # env value
            HIRER_PASSWORD: ENV.password # env value
```

In your code, add the properties surrounded by `%property%`

```json
{
  "baseUrl": "https://example.com",
  "loginID": "%HIRER_LOGIN_ID%",
  "password": "%HIRER_PASSWORD%"
}
```

### Expand properties in all files in a directory

You can also specify the directory to expand

```yaml
steps:
  - plugins:
      - xwlee/expandable#v1.0.0:
          directories:
            - /path/config
          properties:
            LOG_LEVEL: error # string value
```

# License

MIT (see [LICENSE](LICENSE))
