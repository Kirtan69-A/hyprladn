#!/usr/bin/env bash
title=$(playerctl metadata --format '{{title}}' 2>/dev/null | cut -c1-20)
artist=$(playerctl metadata --format '{{artist}}' 2>/dev/null | cut -c1-15)
if [ -n "$title" ]; then
    echo "$title - $artist"
fi

