#!/system/bin/sh
# This script is needed to automatically set device props.


load_surya()
{
    resetprop "ro.product.model" "M2007J20CG"
    resetprop "ro.product.name" "surya"
    resetprop "ro.build.product" "surya"
    resetprop "ro.product.device" "surya"
}

load_karna()
{
    resetprop "ro.product.model" "M2007J20CI"
    resetprop "ro.product.name" "karna"
    resetprop "ro.build.product" "karna"
    resetprop "ro.product.device" "karna"
}


project=$(getprop ro.boot.hwc)
echo $project

case $project in
    "INDIA")
        load_phoenixin
        ;;
    *)
        load_phoenix
        ;;
esac

exit 0
