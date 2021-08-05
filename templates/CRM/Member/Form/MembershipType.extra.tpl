<table>
    <tr class="currency_block">
        <td class="label">
            <label for="currencies">Minimum Fee</label>
        </td>
        <td class="six crm-form-text">
            <select name="currencies" id="currency_name_1" class="select2-container big crm-select2 crm-form-select required">
                {foreach from=$allCurrencies item=currency}
                    <option value={$currency.id}>{$currency.label}</option>
                {/foreach}
            </select>
            <input type="text" class="six crm-form-text" id="minimum_amount_1" name="minimum_amount_1" value="0"><br>
        </td>
    </tr>
</table>

<table>
    <tr class="add_currency_membership">
        <td></td>
        <td>
            <div id="addMoreCurrencies" class="addMoreCurrencies">
                <a href="#" class="button">
                    <span>
                        <i class="crm-i fa-plus-circle" aria-hidden="true">Another Currency</i>
                    </span>
                </a>
            </div>
            <br><br>
            <span class="description">
                Minimum fee required for this membership type.
                For free/complimentary memberships - set minimum fee to zero (0).
                NOTE: When using CiviCRM to process sales taxes this should be the tax exclusive amount.
            <span>
        </td>
    </tr>
</table>

{literal}
    <script type="text/javascript">

        /* Add minimum fees input field, add currency button, minimum amount input field description field
            and select field just after
            crm-membershiptype-form-block-minimum_fee class which will be hidden at
            the end
        */

        CRM.$(function($) {
            $('.crm-membershiptype-form-block-minimum_fee')
                .hide('.crm-membershiptype-form-block-minimum_fee');

            $('.add_currency_membership').insertAfter('.crm-membershiptype-form-block-minimum_fee');
            $('.currency_block').insertAfter('.crm-membershiptype-form-block-minimum_fee');

            /*
                When clicking on add more currency button,
                we duplicate minimum fees input field, minimum amount input field

                Also we increment the value of each select tag id and minimum amount text field
                id and name to differentiate each other when we duplicate our content

                In few words, we duplicate our content. And for each duplicated content,
                we change the ids value and name.
             */

            $(".addMoreCurrencies").on('click', function() {

                // Create clone of currency_block div
                var newel = $('.currency_block:last').clone(true);

                // Insert that div after the previous one
                $(newel).insertAfter(".currency_block:last");
            });
        });

    </script>

{/literal} 