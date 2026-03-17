status is-interactive; and begin
    function git-push-all
        for remote in (git remote)
            echo Normal pushing to $remote
            git push $remote
            echo Pushing tags to $remote
            git push $remote --tags
        end
    end
end
