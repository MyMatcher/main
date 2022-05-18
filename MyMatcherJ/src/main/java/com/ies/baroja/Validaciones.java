package com.ies.baroja;

public class Validaciones {

	//VALIDACION ATRIBUTOS
	public static boolean validacionAtributo(String atributoIntroducido) {
		for (int x = 0; x < atributoIntroducido.length(); x++) {
			char c = atributoIntroducido.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION USER
	public static boolean validacionUser(String userIntroducido) {
		for (int x = 0; x < userIntroducido.length(); x++) {
			char c = userIntroducido.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION PASSWORD
	public static boolean validacionPassword(String passwordIntroducida) {
		for (int x = 0; x < passwordIntroducida.length(); x++) {
			char c = passwordIntroducida.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION NOMBRE
	public static boolean validacionNombre(String nombreIntroducido) {
		for (int x = 0; x < nombreIntroducido.length(); x++) {
			char c = nombreIntroducido.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION APELLIDOS
	public static boolean validacionApellidos(String apellidosIntroducido) {
		for (int x = 0; x < apellidosIntroducido.length(); x++) {
			char c = apellidosIntroducido.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION CORREO
	public static boolean validacionCorreo(String correoIntroducido) {
		for (int x = 0; x < correoIntroducido.length(); x++) {
			char c = correoIntroducido.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || (c == '@') || (c == '.'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION DESCRIPCION
	public static boolean validacionDescripcion(String descripcionIntroducida) {
		for (int x = 0; x < descripcionIntroducida.length(); x++) {
			char c = descripcionIntroducida.charAt(x);

			if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))) {
				return false;
			}
		}
		return true;
	}

	//VALIDACION FECHA DE NACIMIENTO
	public static boolean validacionFechanac(String fechanacIntroducida) {
		for (int x = 0; x < fechanacIntroducida.length(); x++) {
			char c = fechanacIntroducida.charAt(x);

			if (!((c >= '0' && c <= '9') || (c == '/'))) {
				return false;
			}
		}
		return true;
	}
}
