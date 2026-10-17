#!/usr/bin/env python3

import json
import subprocess

try:
    status = subprocess.check_output(['playerctl', 'status']).decode().strip()
    if status not in ('Playing', 'Paused'):
        print(json.dumps({"text": ""}))
        raise SystemExit
    result = subprocess.check_output(['playerctl', 'metadata', '--format', '{{artist}} - {{title}}'])
    text = result.decode().strip()
    print(json.dumps({"text": text, "class": status.lower(), "tooltip": f"{status}: {text}\nClick to play/pause"}))
except (subprocess.CalledProcessError, FileNotFoundError):
    print(json.dumps({"text": ""}))
