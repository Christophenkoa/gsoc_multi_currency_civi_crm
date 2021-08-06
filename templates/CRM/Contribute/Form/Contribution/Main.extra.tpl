<div class="membership_types">
    {foreach from=$memberships item=membership}
        <div>
            <div style="margin:10px;">{$membership.label}</div>
            <ul>
{*                How to iterate on $membership.due ? *}
                {foreach from=$membership item=membership_due}
                    <div>
                        <input type="radio" id="{$membership_due.id}" name="drone" value="{$membership_due.id}">
                        <label for="huey">{$membership_due.currency} - {$membership_due.amount}</label>
                    </div>
                {/foreach}
            </ul>
        </div>
    {/foreach}
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