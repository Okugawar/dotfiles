sync-to-local:
	mkdir -p ${HOME}/bin ${HOME}/.emacs.d
	cp ./bash_profile ${HOME}/.bash_profile
	cp ./bashrc ${HOME}/.bashrc
	cp ./gitconfig ${HOME}/.gitconfig
	cp ./bin/ssh-host-color ${HOME}/bin/
	cp -r ./emacs/* ${HOME}/.emacs.d/

sync-from-local:
	cp ${HOME}/.bash_profile ./bash_profile
	cp ${HOME}/.bashrc ./bashrc
	cp ${HOME}/.gitconfig ./gitconfig
	cp ${HOME}/bin/ ./bin/ssh-host-color
	cp -r ${HOME}/.emacs.d/init* ./emacs/

