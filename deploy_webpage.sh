root=/

content_dirpath=dist/web

if [ -z "$1" ]
then
    echo "Please provide a commit message"
else
	echo "getting current branch name" &&
	current_branch=$(git branch --show-current) &&
	echo "name got \"$current_branch\""
	echo "moving to gh-pages branch" &&
	git checkout gh-pages &&
	echo "getting $content_dirpath folder" &&
	git checkout $current_branch -- $content_dirpath &&
	echo "moving all files from $content_dirpath into root dir" &&
	mv $content_dirpath/* . &&
	rmdir $content_dirpath &&
	echo "adding files to be tracked" &&
	git add . && # add all files (that arent in gitignore) to the repo
	echo "committing changes as \"$1\"" &&
	git commit -m "$1" &&
	echo "pushing to origin" &&
	git push origin

	# always return to original branch
	echo "returning to branch \"$current_branch\"" &&
	git checkout $current_branch
fi

