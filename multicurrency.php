<?php

require_once 'multicurrency.civix.php';
// phpcs:disable
use CRM_Multicurrency_ExtensionUtil as E;
// phpcs:enable


// Modify public membership payment page template
 function multicurrency_civicrm_buildForm($formName, &$form) {
  if($formName == 'CRM_Contribute_Form_Contribution_Main') {

    $form->add('text', 'testfield', ts('Test field'));

  }
}


function multicurrency_civicrm_buildAmount($pageType, &$form, &$amount) {


    $priceSetId = $form->get('priceSetId');

    // sample membership data for test
    $memberships =
        [
              [
                  "label" => "FullTime",
                  "due" =>
                      [
                          ["dollar", 500],
                          ["Euro", 350],
                          ["FCFA", 400],
                      ],
              ],

               [
                   "label" => "Contractor",
                   "due" =>
                       [
                           ["dollar", 567],
                           ["Euro", 543],
                           ["FCFA", 800],
                       ],
               ],

        ];

    if (!empty($priceSetId)) {
        $feeBlock = &$amount;
        if (!is_array($feeBlock) || empty($feeBlock)) {
            return;
        }


        if ($pageType == 'membership') {


            // test purpose
            /*echo '<ul>';

            foreach ($memberships as $membership) {

                echo '<li>'.$membership["label"].'</li>';

                echo '<ul>';
                    foreach ($membership["due"] as $key => $item) {
                        echo '<div><input type="radio" id="huey" name="drone" value="huey" checked>';
                        echo '<label for="huey">'.$item[0].' - '.$item[1]. '</label></div>';
                    }
                echo '</ul>';


            }
            echo '</ul>';*/

            foreach ($feeBlock as &$fee) {
                if (!is_array($fee['options'])) {
                    continue;
                }

            }
            $form->_priceSet['fields'] = $feeBlock;
        }
    }
}


/**
 * Implements hook_civicrm_config().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_config/
 */
function multicurrency_civicrm_config(&$config) {
  _multicurrency_civix_civicrm_config($config);
}

/**
 * Implements hook_civicrm_xmlMenu().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_xmlMenu
 */
function multicurrency_civicrm_xmlMenu(&$files) {
  _multicurrency_civix_civicrm_xmlMenu($files);
}

/**
 * Implements hook_civicrm_install().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_install
 */
function multicurrency_civicrm_install() {
  _multicurrency_civix_civicrm_install();
}

/**
 * Implements hook_civicrm_postInstall().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_postInstall
 */
function multicurrency_civicrm_postInstall() {
  _multicurrency_civix_civicrm_postInstall();
}

/**
 * Implements hook_civicrm_uninstall().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_uninstall
 */
function multicurrency_civicrm_uninstall() {
  _multicurrency_civix_civicrm_uninstall();
}

/**
 * Implements hook_civicrm_enable().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_enable
 */
function multicurrency_civicrm_enable() {
  _multicurrency_civix_civicrm_enable();
}

/**
 * Implements hook_civicrm_disable().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_disable
 */
function multicurrency_civicrm_disable() {
  _multicurrency_civix_civicrm_disable();
}

/**
 * Implements hook_civicrm_upgrade().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_upgrade
 */
function multicurrency_civicrm_upgrade($op, CRM_Queue_Queue $queue = NULL) {
  return _multicurrency_civix_civicrm_upgrade($op, $queue);
}

/**
 * Implements hook_civicrm_managed().
 *
 * Generate a list of entities to create/deactivate/delete when this module
 * is installed, disabled, uninstalled.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_managed
 */
function multicurrency_civicrm_managed(&$entities) {
  _multicurrency_civix_civicrm_managed($entities);
}

/**
 * Implements hook_civicrm_caseTypes().
 *
 * Generate a list of case-types.
 *
 * Note: This hook only runs in CiviCRM 4.4+.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_caseTypes
 */
function multicurrency_civicrm_caseTypes(&$caseTypes) {
  _multicurrency_civix_civicrm_caseTypes($caseTypes);
}

/**
 * Implements hook_civicrm_angularModules().
 *
 * Generate a list of Angular modules.
 *
 * Note: This hook only runs in CiviCRM 4.5+. It may
 * use features only available in v4.6+.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_angularModules
 */
function multicurrency_civicrm_angularModules(&$angularModules) {
  _multicurrency_civix_civicrm_angularModules($angularModules);
}

/**
 * Implements hook_civicrm_alterSettingsFolders().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_alterSettingsFolders
 */
function multicurrency_civicrm_alterSettingsFolders(&$metaDataFolders = NULL) {
  _multicurrency_civix_civicrm_alterSettingsFolders($metaDataFolders);
}

/**
 * Implements hook_civicrm_entityTypes().
 *
 * Declare entity types provided by this module.
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_entityTypes
 */
function multicurrency_civicrm_entityTypes(&$entityTypes) {
  _multicurrency_civix_civicrm_entityTypes($entityTypes);
}

/**
 * Implements hook_civicrm_themes().
 */
function multicurrency_civicrm_themes(&$themes) {
  _multicurrency_civix_civicrm_themes($themes);
}

// --- Functions below this ship commented out. Uncomment as required. ---

/**
 * Implements hook_civicrm_preProcess().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_preProcess
 */
//function multicurrency_civicrm_preProcess($formName, &$form) {
//
//}

/**
 * Implements hook_civicrm_navigationMenu().
 *
 * @link https://docs.civicrm.org/dev/en/latest/hooks/hook_civicrm_navigationMenu
 */
//function multicurrency_civicrm_navigationMenu(&$menu) {
//  _multicurrency_civix_insert_navigation_menu($menu, 'Mailings', array(
//    'label' => E::ts('New subliminal message'),
//    'name' => 'mailing_subliminal_message',
//    'url' => 'civicrm/mailing/subliminal',
//    'permission' => 'access CiviMail',
//    'operator' => 'OR',
//    'separator' => 0,
//  ));
//  _multicurrency_civix_navigationMenu($menu);
//}
