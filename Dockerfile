from python:3.9-slim-bullseye

COPY /app/static /static

LABEL version="1.0.1"

LABEL permissions='{\
  "ExposedPorts": {\
  "80/tcp": {}\
  },\
  "HostConfig": {\
  "PortBindings": {\
  "80/tcp": [\
  {\
  "HostPort": ""\
  }\
  ]\
  }\
  }\
  }'
LABEL company='{\
  "about": "",\
  "name": "MIT",\
  "email": "support@bluerobotics.com"\
  }'
LABEL type="example"
LABEL readme='https://raw.githubusercontent.com/jerWenger/blueos-mavlink-parser/blob/main/README.md'
LABEL links='{\
  "website": "https://github.com/jerWenger/blueos-mavlink-parser/tree/main",\
  "support": "https://github.com/jerWenger/blueos-mavlink-parser/tree/main"\
  }'
LABEL requirements="core >= 1.1"
ENTRYPOINT cd /static && python -m http.server 80