<?php if ( ! defined('EXT')) exit('No direct script access allowed');

/**
 * Importer - Config
 *
 * NSM Addon Updater config file.
 *
 * @package		Solspace:Importer
 * @author		Solspace, Inc.
 * @copyright	Copyright (c) 2008-2014, Solspace, Inc.
 * @link		http://solspace.com/docs/importer
 * @license		http://www.solspace.com/license_agreement
 * @version		2.2.5
 * @filesource	importer/config.php
 */

require_once 'constants.importer.php';

$config['name']									= 'Importer';
$config['version']								= IMPORTER_VERSION;
$config['nsm_addon_updater']['versions_xml'] 	= 'http://www.solspace.com/software/nsm_addon_updater/importer';
