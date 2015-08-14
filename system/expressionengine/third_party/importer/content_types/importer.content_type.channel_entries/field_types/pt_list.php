<?php if ( ! defined('BASEPATH') ) exit('No direct script access allowed');

 /**
 * Solspace - Importer
 *
 * @package		Solspace:Importer
 * @author		Solspace DevTeam
 * @copyright	Copyright (c) 2008-2014, Solspace, Inc.
 * @link		http://solspace.com/docs/addon/c/Importer/
 * @filesource 	./system/expressionengine/third_party/importer/content_types/
 */

 /**
 * Importer - Channel - Field Type - P&T List
 *
 * Allows the Channel Content Type to import the P&T List field type
 *
 * @package 	Solspace:Importer
 * @author		Solspace Dev Team
 * @filesource 	./system/expressionengine/third_party/importer/content_types/field_types/pt_list.php
 */

class Importer_channel_pt_list
{
	// --------------------------------------------------------------------

	/**
	 *	Constructor
	 *
	 *	@access		public
	 *	@return		string
	 */
	public function __construct()
	{

	}
	// END constructor

	// --------------------------------------------------------------------

	/**
	 *	Parses the Field and Returns in Correct Format to send to Channel Entries API
	 *
	 *	@access		public
	 *	@param		integer
	 *	@param		array			// $field_data
	 *	@param		array			// $settings
	 *	@param		string|array	// The array of data for this entry
	 *	@param		boolean			// Whether the $entry_data is preparsed for us
	 *	@return		string
	 */
	public function parse_field($field_id, $field_data, $settings, $entry_data, $preparsed = FALSE)
	{
		if ( ! isset($settings['field_id_'.$field_id.'_element'])) return FALSE;

		if ($preparsed === FALSE)
		{
			$data = Importer_actions::find_element($settings['field_id_'.$field_id.'_element'], $entry_data, FALSE);
        }
        else
        {
        	$data = $entry_data;
        }

		return explode(PHP_EOL, $data);
	}
	// END parse_field()
}
// END Importer_channel_field_type_pt_list CLASS
