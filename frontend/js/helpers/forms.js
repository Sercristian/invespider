
/**
 * Limpia los estilos de validación en un formulario
 */
export function limpiarEstilosValidacion(form) {
  if (!form) return;
  form.querySelectorAll(".is-invalid").forEach((el) => el.classList.remove("is-invalid"));
  form.querySelectorAll(".invalid-feedback").forEach((fb) => fb.classList.add("d-none"));
}

/**
 * Marca un campo como inválido y muestra mensaje
 */
export function mostrarError(input, mensaje = "Campo obligatorio") {
  if (!input) return;

  input.classList.add("is-invalid");
  let fb = input.nextElementSibling;

  // Si no existe feedback, lo crea dinámicamente
  if (!fb || !fb.classList.contains("invalid-feedback")) {
    fb = document.createElement("div");
    fb.classList.add("invalid-feedback");
    input.parentNode.appendChild(fb);
  }

  fb.textContent = mensaje;
  fb.classList.remove("d-none");
}

/**
 * Valida campos requeridos de un formulario.
 * @param {HTMLFormElement} form - formulario a validar
 * @param {Array} campos - array de objetos { id, tipo, mensaje }
 * @returns {boolean} true si es válido
 */
export function validarCampos(form, campos = []) {
  if (!form) return false;
  limpiarEstilosValidacion(form);

  let valido = true;

  campos.forEach(({ id, tipo = "text", mensaje = "Campo obligatorio" }) => {
    const input = form.querySelector(`#${id}`);
    if (!input) return;

    const valor = input.value?.trim();

    if (tipo === "number") {
      if (isNaN(valor) || valor === "") {
        mostrarError(input, mensaje);
        valido = false;
      }
    } else if (tipo === "radio") {
      const radios = form.querySelectorAll(`input[name="${id}"]:checked`);
      if (radios.length === 0) {
        const fb = form.querySelector(`#${id}-feedback`);
        if (fb) fb.classList.remove("d-none");
        valido = false;
      }
    } else {
      if (!valor) {
        mostrarError(input, mensaje);
        valido = false;
      }
    }
  });

  return valido;
}
