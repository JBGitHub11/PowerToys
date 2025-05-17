#!/usr/bin/env python3
"""Check the latest PowerToys release on GitHub."""

import json
import sys
from urllib.request import urlopen, Request

API_URL = "https://api.github.com/repos/microsoft/PowerToys/releases/latest"
req = Request(API_URL, headers={"Accept": "application/vnd.github+json"})
with urlopen(req) as resp:
    data = json.load(resp)
    tag = data.get("tag_name")
    name = data.get("name")
    print(f"Latest release: {name} ({tag})")
