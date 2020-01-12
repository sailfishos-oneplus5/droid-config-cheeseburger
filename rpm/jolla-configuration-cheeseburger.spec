# Device variables including vendor & device (model)
%include rpm/header-cheeseburger.inc

Name: jolla-configuration-%{device}
Summary: Jolla Configuration %{device}
Version: 1.1.2
Release: 1
License: BSD-3-Clause
Source: %{name}-%{version}.tar.gz

# Include general Jolla & Sailfish OS configuration
%include rpm/jolla-configuration-cheeseburger.inc

%description
Meta-package to install packages for %{device} configurations
%files
