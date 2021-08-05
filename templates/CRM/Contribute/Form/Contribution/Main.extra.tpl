<div class="membership_types">
{*    insert a for loop here*}
    <div>
        <div style="margin:10px;">Contractor</div>
        <ul>
            <div>
                <input type="radio" id="huey" name="drone" value="huey">
                <label for="huey">dollar - 567</label>
            </div>
            <div>
                <input type="radio" id="huey" name="drone" value="huey">
                <label for="huey">euro - 543</label>
            </div>
        </ul>
    </div>
</div>

{literal}
    <script type="text/javascript">
        CRM.$(function($) {

            // hide this label
            $('.crm-section.membership_amount-section .label').hide();

            // Add membership option to user and hide the previous one
            $('.content.membership_amount-content').hide();
            $('.membership_types').insertAfter('.content.membership_amount-content');

        });
    </script>

{/literal}