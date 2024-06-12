# Define base URLs and branches
BASE_URL="https://github.com/Test-op6"
BRANCH="14.0"
CRDROID_BASE_URL="https://gitlab.com/crdroidandroid/android_vendor_oneplus_apps.git"
VENDOR_IH8SN_BASE_URL="https://github.com/Terminator-J/vendor_ih8sn.git"
VENDOR_IH8SN_BRANCH="13.0-test"

# Remove existing directories if they exist
rm -rf kernel/oneplus/sdm845
rm -rf vendor/oneplus/enchilada
rm -rf device/oneplus/enchilada
rm -rf device/oneplus/sdm845-common
rm -rf hardware/oneplus
rm -rf vendor/oneplus/apps
rm -rf vendor/ih8sn

# Clone repositories into their respective paths
git clone -b $BRANCH $BASE_URL/kernel_oneplus_sdm845 kernel/oneplus/sdm845
git clone -b $BRANCH $BASE_URL/vendor_oneplus_sdm845-common vendor/oneplus/sdm845-common
git clone -b $BRANCH $BASE_URL/vendor_oneplus_enchilada vendor/oneplus/enchilada
git clone -b $BRANCH $BASE_URL/device_oneplus_enchilada device/oneplus/enchilada
git clone -b $BRANCH $BASE_URL/device_oneplus_sdm845-common device/oneplus/sdm845-common
git clone -b $BRANCH $BASE_URL/hardware_oneplus hardware/oneplus

# Clone additional repositories
git clone -b $BRANCH $CRDROID_BASE_URL vendor/oneplus/apps
git clone -b $VENDOR_IH8SN_BRANCH $VENDOR_IH8SN_BASE_URL vendor/ih8s
