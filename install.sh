##########################################################################################
#
# Unity Config Script
# by topjohnwu, modified by Zackptg5
#
##########################################################################################

##########################################################################################
# Unity Logic - Don't change/move this section
##########################################################################################

if [ -z $UF ]; then
  UF=$TMPDIR/common/unityfiles
  unzip -oq "$ZIPFILE" 'common/unityfiles/util_functions.sh' -d $TMPDIR >&2
  [ -f "$UF/util_functions.sh" ] || { ui_print "! Unable to extract zip file !"; exit 1; }
  . $UF/util_functions.sh
fi

comp_check

MINAPI=26

REPLACE="
"
print_modname() {
  ui_print "-------------------------------------------------"
  ui_print "           GCam Patch for kenzo/kate         V1.2"
  ui_print "              By @BoogeyWoogey69                 "
  ui_print "  Major thanks to SerJo87 , Savitar, Kuro Shi,   "
  ui_print "            Kiraryu and Ayush Rathore            "
  ui_print "-------------------------------------------------"
  ui_print " "
  ui_print "~ List of patches -                              "
  ui_print "1. 60 FPS video recording                   (1.2)"
  ui_print "2. Green tint fix for front cam             (1.0)"
  ui_print "3. Viewfinder lag fix                       (1.0)"
  ui_print "4. 4k DCI Support                           (1.2)"
  ui_print "5. Increased Maximum ISO value - 12,800     (1.2)"
  ui_print "6. Constant framerates when shooting videos (1.2)"
  ui_print "7. Improved Denoising for 30 fps videos     (1.2)"
  ui_print " "
  unity_main
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}

unity_custom() {
  ui_print "~ Verifying Device ...                           "
  device_check "kenzo"|"kate"
}
