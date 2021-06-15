{literal}
<script type="text/javascript">
    CRM.$(function($) {
        $('.crm-membershiptype-form-block-minimum_fee').after(
            '<tr>\
                <td class="label">\
                    <label for="currencies">Minimum Fee</label>\
                </td>\
                <td class="six crm-form-text">\
                    <select name="currencies" id="currency">\
                        <option value="FCFA">FCFA</option>\
                        <option value="EURO">EURO</option>\
                        <option value="DOLLAR">DOLLAR</option>\
                        <option value="CAD">CAD</option>\
                    </select>\
                    <input type="text" class="six crm-form-text" id="minimum_amount" name="minimum_amount" value="0"><br>\
                    <a href="#" class="button"><span><i class="crm-i fa-plus-circle" aria-hidden="true">Another Currency</i></span></a>\
                </td>\
            </tr>'
    );

    /* $(."crm-membershiptype-form-block-description").after(
            '<div id="addMoreCurrencies" class="#">\
                <a href="#" class="button">\
                    <span>\
                        <i class="crm-i fa-plus-circle" aria-hidden="true"></i>\
                        Another Currency\
                    </span>\
                </a>\ 
            </div>'
        ); */

   

        // $(".crm-membershiptype-form-block-minimum_fee").after('<div class="crm-accordion-wrapper collapsed"><div class="crm-accordion-header">Accepted Currencies For Membership Payment </div><div class="crm-accordion-body"><div class="crm-block crm-form-block crm-form-title-here-form-block">   <td class="label"><label for="currencies">Currency</label></td><td class="six crm-form-text"><select name="currencies" id="currency"><option value="volvo">FCFA</option><option value="saab">Euro</option><option value="mercedes">Dollar</option><option value="audi">CAD</option></select></td><br><td class="label"><label>Minimum Fee</label></td><td><input type="text" class="six crm-form-text" id="minimum_amount" name="minimum_amount" value="0"></td>   </div></div></div>');
    });
/*
    <table>
  <tr class="crm-entity" id="contact-123">

    <!-- textfield (default type) -->
    <td class="crm-editable crmf-first_name">Fred</td>

    <!-- select list with empty option -->
    <!-- (note: options will be fetched automatically by the api) -->
    <td class="crm-editable crmf-prefix_id"
        data-type="select"
        data-empty-option="{ts}- none -{/ts}">Mr.</td>

    <!-- yes/no select -->
    <td class="crm-editable crmf-is_deceased" data-type="boolean">
      No
    </td>

  </tr>
</table>

<tr>
    <td>
        <label for="currencies">Choose a currency</label>
    </td>
    <td>
        <select name="currencies" id="currency">
            <option value="volvo">FCFA</option>
            <option value="saab">Euro</option>
            <option value="mercedes">Dollar</option>
            <option value="audi">CAD</option>
        </select>
    </td>
</tr>
<tr>
    <td>
        <label>Set a minimum price</label>
    </td>
    <td>
        <input type="text" id="minimum_amount" name="minimum_amount" value="0">
    </td>
</tr>
*/

</script>




<!--
    {*<script type="text/javascript">
    $('.crm-membershiptype-form-block-minimum_fee').append('<label for="phone">Enter a phone number:</label><br><br>')
    </script>
    

    <tr class="crm-membershiptype-form-block-minimum_fee">
            <td class="label"><label for="minimum_fee">Minimum Fee</label>
          </td>
  <td><input size="6" maxlength="14" name="minimum_fee" type="text" id="minimum_fee" class="six crm-form-text"><br>
    <span class="description">Minimum fee required for this membership type. For free/complimentary memberships - set minimum fee to zero (0). NOTE: When using CiviCRM to process sales taxes this should be the tax exclusive amount.</span>      </td>
        </tr>*}
-->
{/literal} 