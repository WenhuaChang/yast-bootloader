# encoding: utf-8

# File:
#      include/bootloader/routines/section_helps.ycp
#
# Module:
#      Bootloader installation and configuration
#
# Summary:
#      Help and label strings for bootloader section widgets
#
# Authors:
#      Josef Reidinger <jreidinger@suse.cz>
#
# $Id$
#
module Yast
  module BootloaderRoutinesSectionHelpsInclude
    def initialize_bootloader_routines_section_helps(include_target)
      textdomain "bootloader"

      @section_help_messages = {
        "type_image"        => _("<p><b>Image Section</b></p>"),
        "image"             => _(
          "<p><b>Kernel Image</b> defines the kernel to boot. Either enter the name directly or choose via <b>Browse</b>.</p>"
        ),
        "root"              => _(
          "<p><b>Root Device</b> sets the device to pass to the kernel as root device.</p>"
        ),
        "vgamode"           => _(
          "<p><b>Vga Mode</b> defines the VGA mode the kernel should set the <i>console</i> to when booting.</p>"
        ),
        "append"            => _(
          "<p><b>Optional Kernel Command Line Parameter</b> lets you define additional parameters to pass to the kernel.</p>"
        ),
        "initrd"            => _(
          "<p><b>Initial RAM Disk</b>, if not empty, defines the initial ramdisk to use. Either enter the path and file name\ndirectly or choose by using <b>Browse</b>.</p>\n"
        ),
        "type_other"        => _(
          "<p>Select <b>Chainloader Section</b> if you want to define a section for booting an OS other than Linux.</p>"
        ),
        "lock"              => _(
          "<p>Setting <b>Use Password Protection</p> will require a password to select this section.</p>"
        ),
        "chainloader"       => _(
          "<p><b>Other System</b> lets you choose among the non-Linux operating systems found on your computer.</p>"
        ),
        "makeactive"        => _(
          "<p>Select <b>Activate this Partition when selected for Boot</b> if your BIOS needs this flag set in order to boot it</p>"
        ),
        "blockoffset"       => _(
          "<p><b>Block Offset for Chainloading</b> lets you specify the list of blocks to boot. In most cases you want\nto specify <code>+1</code> here. For specifics on blocklist notation see the grub documentation.</p>\n"
        ),
        "type_xen"          => _(
          "<p>Select <b>Xen Section</b> if you want to add a new Linux kernel or other image \nand start it in a Xen environment.</p>\n"
        ),
        "xen"               => _(
          "<p><b>Hypervisor</b> specifies the Hypervisor to use.</p>"
        ),
        "xen_append"        => _(
          "<p><b>Additional Xen Hypervisor Parameters</b> lets you define additional parameters to pass to the xen hypervisor.</p>"
        ),
        "type_menu"         => _("<p><b>Menu Section</b></p>"),
        "menu_root"         => _("<p><b>Partition of Menu File</b></p>"),
        "configfile"        => _(
          "<p><b>Menu Description File</b> specifies path on root device from which is loaded menu file.</p>"
        ),
        "remap"             => _(
          "<p><b>Map Section to the First Disk from Device Map</b> Windows usually need to be on the first disk.</p>"
        ),
        "MeasuresTableHelp" => _(
          "<p><b>Measures</b> includes measured files with PCR. Change table is possible via buttons: <b>Add</b> , \n<b>Edit</b> and <b>Delete</b></p>"
        ),
        "relocatable"       => _(
          "<p><b>Allow attempt to relocate</b>\nUsually specified in global section</p>"
        ),
        "readonly"          => _(
          "<p><b>Force root filesystem to be mounted read-only</b><br>\nUsually specified in global section</p>"
        ),
        "type_dump"         => _(
          "<p>Select <b>Dump Section</b> to add a section that specifies how to\n" +
            "create a system dump either on a DASD disk partition or tape device or to a\n" +
            "file on a SCSI disk partition.</p>"
        ),
        "type_menu"         => _(
          "<p>Select <b>Menu Section</b> to add a new menu to the configuration.\nMenu sections represent a list of tasks which are grouped together.</p>\n"
        ),
        "enable_selinux"    => _(
          "<p>Select <b>Enable SELinux</b> to add the needed kernel boot parameters to enable the SELinux security framework. \nPlease note that this will also disable AppArmor.</p>"
        )
      }


      @section_descriptions = {
        "type_image"   => _("Image Section"),
        "image"        => _("&Kernel Image"),
        "root"         => _("&Root Device"),
        "vgamode"      => _("&Vga Mode"),
        "append"       => _("O&ptional Kernel Command Line Parameter"),
        "initrd"       => _("&Initial RAM Disk"),
        "type_other"   => _("Chainloader Section"),
        "lock"         => _("Use Password Protection"),
        "chainloader"  => _("&Other System"),
        "noverifyroot" => _("Do not &verify Filesystem before Booting"),
        "makeactive"   => _("&Activate this Partition when selected for Boot"),
        "blockoffset"  => _("B&lock Offset for Chainloading"),
        "remap"        => _("&Map Section to the First Disk in Device Map"),
        "type_xen"     => _("Xen Section"),
        "xen"          => _("&Hypervisor"),
        "xen_append"   => _("&Additional Xen Hypervisor Parameters"),
        "type_menu"    => _("Menu Section"),
        "menu_root"    => _("&Partition of Menu File"),
        "configfile"   => _("&Menu Description File"),
        "readonly"     => _("&Force root filesystem to be mounted read-only"),
        "relocatable"  => _("Allow attempt to &relocate"),
        "target"       => _("Tar&get Directory for Section"),
        "parmfile"     => _("Op&tional Parameter File"),
        "type_dump"    => _("Dump Section (obsolete)"),
        "dumpto"       => _("&Dump Device"),
        "dumptofs"     => _("&SCSI Dump Device"),
        "type_menu"    => _("Menu Section"),
        "list"         => _("&List of Menu Entries"),
        "default"      => _("&Number of Default Entry"),
        "timeout"      => _("&Timeout in seconds"),
        "prompt"       => _("&Show boot menu"),
        "copy"         => _("C&opy Image to Boot Partition"),
        "optional"     => _("&Skip Section gracefully on Errors"),
        "other"        => _("Boot &Partition of Other System")
      }
    end
  end
end
