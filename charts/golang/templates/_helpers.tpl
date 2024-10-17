{{/*
Expand the name of the chart.
*/}}
{{- define "go-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the full name of the resource.
*/}}
{{- define "go-app.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- include "go-app.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}
