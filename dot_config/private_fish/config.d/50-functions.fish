status is-interactive; and begin
    function git-push-all
        for remote in (git remote)
            git push $remote
            git push $remote --tags
        end
    end
end
