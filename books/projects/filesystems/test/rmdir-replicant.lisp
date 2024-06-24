(include-book "../test-stuff")
(include-book "oslib/argv" :dir :system)

(b*
    (((mv argv state)
      (oslib::argv))
     ((mv errmsg opts extra-args) (parse-rmdir-opts argv))
     ;; Either a parsing error, or no files provided on the command line.
     ((when (or errmsg (atom extra-args)))
      (mv (good-bye 1) fat32$c state))
     ((rmdir-opts opts) opts)
     ((mv & val state)
      (getenv$ "DISK" state))
     ((mv fat32$c &)
      (disk-image-to-lofat
       fat32$c val state))
     ((mv fs &)
      (lofat-to-hifat fat32$c))
     ((mv fs exit-status)
      ;; The -p option to rmdir is not yet supported.
      (if opts.parents
          (mv fs -1)
        (rmdir-list fs extra-args 0)))
     ((mv fat32$c &)
      (hifat-to-lofat fat32$c fs))
     ((mv & val state)
      (getenv$ "RMDIR_OUTPUT" state))
     ((mv state &)
      (lofat-to-disk-image
       fat32$c val state)))
  (mv (good-bye exit-status) fat32$c state))
