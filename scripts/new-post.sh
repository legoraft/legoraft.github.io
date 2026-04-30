#!/bin/bash

echo """-- New post --
"""

read -rp "Title: " title

generated_slug=$(echo $title |
    tr "[:upper:]" "[:lower:]" |
    sed -E "s/[^a-z0-9]/-/g; s/^-+|-+$//g; s/-+/-/g")

read -rp "Slug [${generated_slug}]: " slug
slug=${slug:-$generated_slug}

generated_branch="post/${slug}"
file="content/posts/${slug}.md"

read -rp "Branch [${generated_branch}]: " branch
branch=${branch:-$generated_branch}

git checkout -b "$branch"
mkdir -p $(dirname "$file")

cat << "EOF" > $file
+++
title = "$title"
description = ""
date = $(date +%Y-%m-%d)
updated = $(date +%Y-%m-%d)

[taxonomies]
tags = [  ]
+++
EOF
