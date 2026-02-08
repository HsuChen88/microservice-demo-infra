{{/*
ArgoCD Apps Helm template helpers
*/}}

{{- define "argocd-apps.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "argocd-apps.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "argocd-apps.labels" -}}
app.kubernetes.io/managed-by: argocd
app.kubernetes.io/part-of: paper-demo
{{- end }}
