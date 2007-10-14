use Module::Build;
my $build = Module::Build->new
    (
     module_name => 'NetSNMP::MibProxy',
     sign => 1,
     license => 'perl',
     dist_author => 'Nito Martinez <nito@qindel.es>',
     create_makefile_pl => 'passthrough',
     dist_version_from => 'lib/NetSNMP/MibProxy.pm',
     script_files => ['bin/mibProxy'],
     install_path => { 'etc' => '/etc/mibProxy',
                       'log' => '/var/log/mibProxy' },
     etc_files => { 'etc/mibProxy.conf' => 'etc/mibProxy.conf' },
     log_files => { 'log/mibProxy.log' => 'log/mibProxy.log' },
     requires => {
	 'Test::More' => 0,
	 'Log::Log4perl' => 0,
	 'Log::Dispatch::FileRotate' => 0,
	 'Pod::Usage' => 0,
	 'Test::Pod::Coverage' => 1.04,
	 'Proc::ProcessTable' => 0,
	 'Config::Properties::Simple' => 0.14,
	 'SNMP' => 0,
	 'File::Temp' => 0,
	 'IPC::Open2' => 0,
     },

     );
$build->create_makefile_pl;
$build->add_build_element('etc');
$build->add_build_element('log');
$build->create_build_script;

