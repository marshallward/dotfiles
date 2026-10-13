#!/usr/bin/env python3

import json
import subprocess

try:
    result = subprocess.check_output(['playerctl', 'metadata', '--format', '{{artist}} - {{title}}'])
    text = result.decode().strip()
    print(json.dumps({"text": text, "icon": "🎜"}))
except subprocess.CalledProcessError:
    print(json.dumps({"text": "", "icon": ""}))
