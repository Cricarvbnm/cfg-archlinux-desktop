status is-interactive; and begin
    function git-push-all
	set -l remotes (git remote)
	echo Remotes: $remotes
	echo
	set -l jobs_pushing
	for remote in $remotes
	    git push $remote &
	    set -a jobs_pushing $last_pid
	    git push $remote --tags &
	    set -a jobs_pushing $last_pid
	end
	wait $jobs_pushing
	echo
	echo Completed
    end
end
