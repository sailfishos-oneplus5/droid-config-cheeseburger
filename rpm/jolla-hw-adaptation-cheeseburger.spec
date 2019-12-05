# Device variables including vendor & device (model)
%include rpm/header-cheeseburger.inc

Name: jolla-hw-adaptation-%{device}
Summary: Jolla HW Adaptation %{device}
Version: 1.1.1
Release: 1
License: BSD-3-Clause
Source: %{name}-%{version}.tar.gz

# Include device specific HW adaptation configuration
%inlcude rpm/jolla-hw-adaptation-cheeseburger.inc

%description
Meta-package to install packages for %{device} HW Adaptation
%files
