default:
    @just --list

save:
    git push

publish:
    git push
    git push github
    git push codeberg

new:
    @./scripts/new-post.sh
