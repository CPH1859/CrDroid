echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/oppo/CPH1859/patches/$dir/*.patch
	echo " "
done

cd $rootdirectory
cd system/core/

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
