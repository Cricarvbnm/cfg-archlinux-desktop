status is-interactive; and begin
    function git-push-all
	set -l remotes (git remote)
	echo Remotes: $remotes
	echo
        for remote in $remotes
            git push $remote & git push $remote --tags &
        end
	echo
	echo Completed
    end
end
