(setq sr-speedbar-width 40)
(setq sr-speedbar-default-width 40)
(setq sr-speedbar-max-width 40)
(require 'sr-speedbar)
(defun ad-advised-definition-p (definition)
  "Return non-nil if DEFINITION was generated from advice information."
  (if (or (ad-lambda-p definition)
	  (macrop definition)
	  (ad-compiled-p definition))
      (let ((docstring (ad-docstring definition)))
	(and (stringp docstring)
	     (get-text-property 0 'dynamic-docstring-function docstring)))))
(sr-speedbar-open)
