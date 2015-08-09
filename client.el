(defun diacritic-api-get ()
  (interactive)
  (let ((api-url "http://diacritic.braincandy.com.ar/api/char/")
        (inp-char (read-from-minibuffer "Char: ")))
       (request (format "%s%s" api-url inp-char)
                :parser 'json-read
                :success (function*
                          (lambda (&key data &allow-other-keys)
                            (let* ((input (elt (assoc-default 'input data) 0))
                                   (output (assoc-default 'output data)))
                            (switch-to-buffer-other-window "*diacritic*")
                            (erase-buffer)
                            (insert (format "%s" output))
                            (other-window 1)))))))

(global-set-key '[?\C-c ?\C-d]  `diacritic-api-get)

(provide 'diacritic-mode)
