{literal}
<script type="text/javascript">
    CRM.$(function($) {
        $('.crm-membershiptype-form-block-minimum_fee').after(
                '<tr>\
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
                </tr>').after(
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
                </tr>'
        ).hide('.crm-membershiptype-form-block-minimum_fee');

        $(".addMoreCurrencies").on('click', function() {
            //alert('Add currency');
            //$(".currency_block").clone().appendTo(".crm-membershiptype-form-block-minimum_fee");
            // var ele = $(this).closest('.currency_block').clone(true);
            //$(this).closest('.currency_block').after(ele);
            $( ".description" ).clone().appendTo( ".crm-membershiptype-form-block-minimum_fee" );
        });
    });

</script>

{/literal} 