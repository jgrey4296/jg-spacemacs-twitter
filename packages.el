(defconst jg-spacemacs-twitter-packages
  '(
    tramp
    evil
    helm
    )
  )

(defun jg-spacemacs-twitter/pre-init-helm ()
  (spacemacs|use-package-add-hook helm
    :post-config
    (setq-default jg-spacemacs-twitter/twitter-image-helm-source
                  (helm-make-source "Find Image" 'helm-source-ffiles
                    :action '(("action" . jg-spacemacs-twitter/twitter-upload-image))))
    )
  )

(defun jg-spacemacs-twitter/init-tramp ()
  (use-package tramp
    :defer t)
  )

(defun jg-spacemacs-twitter/post-init-evil ()
  (evil-ex-define-cmd "tweet" 'jg-spacemacs-twitter/tweet)
  (evil-ex-define-cmd "image" 'jg-spacemacs-twitter/twitter-add-picture)
  (spacemacs/set-leader-keys "a U t" 'jg-spacemacs-twitter/open_user)

  )
