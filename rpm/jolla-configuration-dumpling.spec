# Device variables including vendor & device (model)
%include rpm/header-dumpling.inc

Name: jolla-configuration-%{device}
Summary: Jolla Configuration %{device}
Version: 1.5.1
Release: 0
License: BSD-3-Clause
Source: %{name}-%{version}.tar.gz

# Packages required for the device HW adaptation
%include rpm/jolla-hw-adaptation-dumpling.inc

# General Jolla & Sailfish OS configuration packages
%include rpm/jolla-configuration-dumpling.inc

%description
Meta-package to install packages for %{device} HW adaptation configurations
%files
