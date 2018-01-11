<?php
/**
 * @copyright 2010 MAPIX Technologies Ltd, UK, http://mapix.com/
 * @license http://en.wikipedia.org/wiki/BSD_licenses  BSD License
 * @package Smarty
 * @subpackage PluginsModifier
 */

function smarty_modifier_seconds_to_words($seconds) {
  if ($seconds < 0) throw new Exception("Can't do negative numbers!");
  if ($seconds == 0) return "zero seconds";
  if ($seconds < 1) return "less than a second";

  $hours = intval($seconds/pow(60,2));
  $minutes = intval($seconds/60)%60;
  $seconds = $seconds%60;
  $out = "";

  if ($hours > 0) $out .= $hours . " 時間". ($hours > 1 ? "s" : "")." ";
  if ($minutes > 0) $out .= $minutes . " 分". ($minutes > 1 ? "" : "")." ";
  if ($seconds > 0) $out .= $seconds . " 秒". ($seconds > 1 ? "" : "");
  return trim($out);
}
