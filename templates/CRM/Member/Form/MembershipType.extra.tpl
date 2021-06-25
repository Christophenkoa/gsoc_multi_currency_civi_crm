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
                            <select name="currencies" id="currency_name_1" class="select2-container big crm-select2 crm-form-select required">\
                                <option value="FCFA">FCFA</option>\
                                <option value="EURO">EURO</option>\
                                <option value="DOLLAR">DOLLAR</option>\
                                <option value="CAD">CAD</option>\
                            </select>\
                            <input type="text" class="six crm-form-text" id="minimum_amount_1" name="minimum_amount_1" value="0"><br>\
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

                Also we increment the value of each select tag id and minimum amount text field
                id and name to differentiate each other when we duplicate our content
             */

            $(".addMoreCurrencies").on('click', function() {

                // Selecting last id
                var currency_name_id = $('.currency_block select').last().attr('id');

                console.log(currency_name_id);

                var split_id = currency_name_id.split('_');

                // New index
                var index = Number(split_id[2]) + 1;

                console.log(index);

                // Create clone of currency_block div
                var newel = $('.currency_block:last').clone(true);

                // Set id of new element
                $(newel).find('select').attr("id","currency_name_"+index);
                $(newel).find('input[type=text]').attr("id","minimum_amount_"+index);
                $(newel).find('input[type=text]').attr("name","minimum_amount_"+index);

                // Insert that div after the previous one
                $(newel).insertAfter(".currency_block:last");

                console.log(index);


                //alert('Add currency');
                // $('.currency_block:last').clone().insertAfter('.currency_block:last');
            });
        });

    </script>

{/literal} 