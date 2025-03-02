.PHONY: all backup git_ci git_push
date := `date +%Y.%m.%d-%H:%M:%S`
all: backup git_ci git_push
backup:
	mackup backup

git_ci:
	git add -u && git ci -m"update backup in ${date}"

git_push:
	git push
