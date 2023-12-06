#
# spec file for package tcl-cairo
#

%define packagename tclcairo

Name:           tcl-cairo
BuildRequires:  gcc
BuildRequires:  make
BuildRequires:  pkg-config
BuildRequires:  swig
BuildRequires:  tcl
BuildRequires:  tcl-devel >= 8.4
BuildRequires:  cairo-devel
Version:        0.2
Release:        0
Summary:        Tcl bindings for Cairo library
License:        MIT
Group:          Development/Languages/Tcl
BuildRoot:      %{_tmppath}/%{name}-%{version}-build
URL:            https://github.com/ray2501/tcl-cairo
Source0:        %name-%version.tar.gz

%description
It is Swig based binding for tcl for the cairo library.
    
%prep
%setup -q -n %{name}-%{version}

%build
make

%install
mkdir -p %buildroot%tcl_archdir/%{packagename}%{version}
cp pkgIndex.tcl %buildroot%tcl_archdir/%{packagename}%{version}
cp libcairo.so %buildroot%tcl_archdir/%{packagename}%{version}

%clean
rm -rf %buildroot

%files
%defattr(-,root,root)
%tcl_archdir

%changelog
