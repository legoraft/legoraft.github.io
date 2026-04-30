#!/bin/bash

printf "\t%s\n\n" "-- New post --"

read -rp "$(printf "\e[96mTitle\e[0m: ")" title

generated_slug=$(echo $title |
    tr "[:upper:]" "[:lower:]" |
    sed -E "s/[^a-z0-9]/-/g; s/^-+|-+$//g; s/-+/-/g")

read -rp "$(printf "\e[96mSlug \e[0m[\e[90m${generated_slug}\e[0m]: ")" slug
slug=${slug:-$generated_slug}

generated_branch="post/${slug}"
file="content/posts/${slug}.md"

read -rp "$(printf "\e[96mBranch \e[0m[\e[90m${generated_branch}\e[0m]: ")" branch
branch=${branch:-$generated_branch}

git checkout -b "$branch" -q
printf "\n\e[32m  ✓ checkout\e[0m %s \n" "$branch"

mkdir -p $(dirname "$file")

cat << EOF > $file
+++
title = "$title"
description = ""
date = $(date +%Y-%m-%d)
updated = $(date +%Y-%m-%d)

[taxonomies]
tags = [  ]
+++
EOF

printf "\e[32m  ✓ create\e[0m %s \n\n" "$file"
