package cuepkg

#deployment: {
  apiVersion: "apps/v1"
  kind: "Deployment"
  metadata: {
    name: "cue-demo"
    namespace: "default"
  }
  spec: {
    replicas: 1
    revisionHistoryLimit: 3
    selector: matchLabels: app: "cue-demo"
    template: {
      metadata: labels: app: "cue-demo"
      spec: containers: [
        {
          image: string
          name: "cue-demo"
          ports: [
            {
              containerPort: 9090
            }
          ]
        }
      ]
    }
  }
}