default:
    @just --list

save:
    git push

publish:
    git push
    git push github
    git push codeberg
    git push tangled

new:
    @./scripts/new-post.sh
