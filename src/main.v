module main

import winreg

fn main() {
	hkey := winreg.open_key(.hkey_local_machine, "SOFTWARE\\Microsoft\\Windows\\CurrentVersion", .key_all_acess)!

	hkey.reg_query_value("ProgramFilesDir")
	println('Hello World!')
}

