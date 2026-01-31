# user-service-java

ms de teste

## 🏗️ Architecture

This microservice follows the IDP Golden Path and includes:

- **Runtime**: nodejs
- **Owner**: user:default/guest
- **Tier**: standard

## 🚀 Quick Start

### Prerequisites

- Docker
- kubectl
- Helm

### Local Development

```bash
# Install dependencies
npm install  # or go mod download / pip install -r requirements.txt

# Run locally
npm run dev

# Run tests
npm test
```

### Deployment

This service is deployed using GitOps with ArgoCD.

**Staging**: Automatically deployed on merge to `main`
**Production**: Manually promoted via ArgoCD UI

## 📦 Helm Chart

The Helm chart is located in `helm/` directory with environment-specific values:

- `values-stg.yaml` - Staging configuration
- `values-prd.yaml` - Production configuration

## 🔧 Configuration

Environment variables are managed via Kubernetes ConfigMaps and Secrets.

See `helm/values-*.yaml` for configuration options.

## 📊 Monitoring

- **Metrics**: Prometheus scraping enabled
- **Logs**: Centralized logging via Loki
- **Traces**: OpenTelemetry instrumentation

## 🤝 Contributing

1. Create a feature branch
2. Make your changes
3. Open a Pull Request
4. Wait for CI/CD validation
5. Merge to deploy to staging
