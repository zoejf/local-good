# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
        $('#simplify-payment-form').on 'submit', ->
            $('#process-payment-btn').attr disabled: 'disabled'
            SimplifyCommerce.generateToken {
                key: 'sbpb_NjhhZWIzZmEtZDZlNS00Yjg2LWE2NzAtNDUyMzRhZDRiMjVh',
                card: {
                    number: $('#cc-number').val(),
                    cvc: $('#cc-cvc').val(),
                    expMonth: $('#cc-exp-month').val(),
                    expYear: $('#cc-exp-year').val().slice(-2)
                }
            }, simplifyResponseHandler
            false
 
    $(document).ready(ready)

    simplifyResponseHandler = (data) ->
        paymentForm = $('#simplify-payment-form')
        $('.error').remove()
        if data.error
            if data.error.code == 'validation'
                errorList = ''
                for f in data.error.fieldErrors
                    errorList += "
Field #{f.field} is invalid – #{f.message}"
                paymentForm.after errorList
 
            $('#process-payment-btn').removeAttr 'disabled'
        else
            token = data['id']
            paymentForm.append ""
            paymentForm.get(0).submit()
        return