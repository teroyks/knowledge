# Cloudflare Workers

## Authorization

Browser-based authorization (`wrangler login`) does not seem to always work – never receives the credentials after authorizing.

### Config

Create an API key in the [dashboard](https://dash.cloudflare.com/profile/api-tokens) and paste it to the command:

```shellsession
wrangler config
```

This saves the configuration file in the `.wrangler/config` directory under your home dir.
