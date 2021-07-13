{literal}
    <script type="text/javascript">
        CRM.$(function($) {

            // hide this label
            $('.crm-section.membership_amount-section .label').hide();

            // Add membership option to user and hide the previous one
            $('.content.membership_amount-content')
                .after(
                '<div>\n' +
                '        <div>\n' +
                '            <div style="margin:10px;">Full Time</div>\n' +
                '\n' +
                '            <ul>\n' +
                '                <div>\n' +
                '                    <input type="radio" id="huey" name="drone" value="huey" checked>\n' +
                '                    <label for="huey">dollar - 500</label>\n' +
                '                </div>\n' +
                '                <div>\n' +
                '                    <input type="radio" id="huey" name="drone" value="huey" checked>\n' +
                '                    <label for="huey">euro - 350</label>\n' +
                '                </div>\n' +
                '            </ul>\n' +
                '\n' +
                '        </div>\n' +
                '    </div>\n' +
                '    <div>\n' +
                '        <div>\n' +
                '            <div style="margin:10px;">Contractor</div>\n' +
                '            <ul>\n' +
                '                <div>\n' +
                '                    <input type="radio" id="huey" name="drone" value="huey">\n' +
                '                    <label for="huey">dollar - 567</label>\n' +
                '                </div>\n' +
                '                <div>\n' +
                '                    <input type="radio" id="huey" name="drone" value="huey">\n' +
                '                    <label for="huey">euro - 543</label>\n' +
                '                </div>\n' +
                '            </ul>\n' +
                '        </div>\n' +
                '    </div>')
                .hide('.content.membership_amount-content');
        });
    </script>

{/literal}