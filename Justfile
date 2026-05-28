default:
    @just --list

serve:
    GIT_COMMIT=$(git rev-parse --short HEAD) BUILD_TIME=45 zola serve

save:
    git push

publish:
    git push
    git push github
    git push codeberg
    git push tangled

new:
    @./scripts/new-post.sh
