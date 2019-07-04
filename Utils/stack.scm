(define create-stack
    (lambda ()
        (let ((stack '()))
            (lambda (message . args)
                (case message
                    ((push!) (set! stack (cons (car args) stack)))
                    ((pop!) (if (null? stack)
                                (error "Stack is empty")
                                (let ((result (car stack)))
                                    (set! stack (cdr stack))
                                    result)))
                    ((empty) (null? stack)) 
                )
            )
        )
    )
)

