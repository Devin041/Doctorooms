<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('format_date')) {
    /**
     * This function format sql date to standard date. format: d-m-y
     * @param $date
     * @return false|string
     */
    function format_date($date)
    {
        return date("d-m-Y", strtotime($date));
    }
}
if (!function_exists('format_date_time')) {
    /**
     * This function format sql date to standard date and time. format: d-m-y H:i:s
     * @param $date_time
     * @return false|string
     */
    function format_date_time($date_time)
    {
        return date("d-m-Y H:i:s", strtotime($date_time));
    }
}