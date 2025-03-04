;; YOU DON'T NEED NONE OF THIS CODE FOR SIMPLE INSTALL
;; IT IS AN EXAMPLE OF CUSTOMIZATION.
(use-package ellama
  :init
  ;; setup key bindings
  (setopt ellama-keymap-prefix "C-c e")
  ;; language you want ellama to translate to
  (setopt ellama-language "English")
  ;; could be llm-openai for example
  (require 'llm-ollama)
  (setopt ellama-provider
	  (make-llm-ollama
	   ;; this model should be pulled to use it
	   ;; value should be the same as you print in terminal during pull
	   :chat-model "deepseek-coder-v2:latest"
	   :embedding-model "deepseek-coder-v2:latest"
	   :default-chat-non-standard-params '(("num_ctx" . 163840))))
  ;; Predefined llm providers for interactive switching.
  ;; You shouldn't add ollama providers here - it can be selected interactively
  ;; without it. It is just example.
  ;;(setopt ellama-providers
	;;	    '(("gemma2" . (make-llm-ollama
	;;			   :chat-model "gemma2:27b"
	;;			   :embedding-model "gemma2:27b"))
  ;;        ("codegemma" . (make-llm-ollama
  ;;                         :chat-model: "codegemma:latest"
  ;;                         :embedding-model: "codegemma:latest"))))
  ;; Naming new sessions with llm
  (setopt ellama-naming-provider
	  (make-llm-ollama
	   :chat-model "deepseek-coder-v2:latest"
	   :embedding-model "deepseek-coder-v2:latest"
	   :default-chat-non-standard-params '(("stop" . ("\n")))))
  (setopt ellama-naming-scheme 'ellama-generate-name-by-llm)
  ;; Translation llm provider
  (setopt ellama-translation-provider (make-llm-ollama
				       :chat-model "deepseek-coder-v2:latest"
				       :embedding-model "deepseek-coder-v2:latest")))
