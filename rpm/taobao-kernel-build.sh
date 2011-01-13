#!/bin/bash
##for check
sudo yum install perl-TimeDate -y
cd $1
python ./scripts/package.py
cd taobao-kernel-build
rpmbuild -bb  --rmsource *.spec --without debug --without fips --without kabichk --without perftool --without xen --define="_rpmdir $1/rpm" --define="_builddir $1/taobao-kernel-build" --define="_sourcedir $1/taobao-kernel-build" --define="_tmppath $1/rpm"

