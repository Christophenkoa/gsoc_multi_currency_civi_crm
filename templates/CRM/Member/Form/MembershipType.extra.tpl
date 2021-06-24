{literal}
    <script type="text/javascript">

        /* Add minimum fees input field, add currency button, minimum amount input field description field
            and select field just after
            crm-membershiptype-form-block-minimum_fee class which will be hidden at
            the end
        */
        CRM.$(function($) {
            $('.crm-membershiptype-form-block-minimum_fee').after(
                    '<tr class="currency_block">\
                        <td class="label">\
                            <label for="currencies">Minimum Fee</label>\
                        </td>\
                        <td class="six crm-form-text">\
                            <select name="currencies" id="currency" class="select2-container big crm-select2 crm-form-select required">\
                                <option value="FCFA">FCFA</option>\
                                <option value="EURO">EURO</option>\
                                <option value="DOLLAR">DOLLAR</option>\
                                <option value="CAD">CAD</option>\
                            </select>\
                            <input type="text" class="six crm-form-text" id="minimum_amount" name="minimum_amount" value="0"><br>\
                        </td>\
                    </tr>\
                    <tr>\
                        <td>\
                        </td>\
                        <td>\
                            <div id="addMoreCurrencies" class="addMoreCurrencies">\
                                <a href="#" class="button">\
                                    <span>\
                                        <i class="crm-i fa-plus-circle" aria-hidden="true">Another Currency</i>\
                                    </span>\
                                </a>\
                            </div>\
                            <br><br>\
                            <span class="description">\
                                Minimum fee required for this membership type.\
                                For free/complimentary memberships - set minimum fee to zero (0).\
                                NOTE: When using CiviCRM to process sales taxes this should be the tax exclusive amount.\
                            <span>\
                        </td>\
                    </tr>'
            ).hide('.crm-membershiptype-form-block-minimum_fee');


            /*
                When clicking on add more currency button,
                we duplicate minimum fees input field, minimum amount input field
             */

            $(".addMoreCurrencies").on('click', function() {
                //alert('Add currency');
                $('.currency_block:last').clone().insertAfter('.currency_block:last');
            });
        });

    </script>

{/literal} 