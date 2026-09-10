<%-- 
    Document   : botonesNavegacionEdicion
    Created on : 9 sept 2026, 13:27:16
    Author     : viviana-harrizon
--%>


<section id="accionesEditar" aria-label="Acciones de edición">
    <div class="d-flex flex-wrap justify-content-between align-items-center gap-3">
        <a href="${pageContext.request.contextPath}/" class="btn btn-lg btn-outline-secondary">
            <i class="bi bi-arrow-left me-1"></i> Regresar
        </a>

        <div class="d-flex gap-2">
            <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
               class="btn btn-lg btn-link text-danger text-decoration-none">
                <i class="bi bi-trash me-1"></i> Eliminar cliente
            </a>
            <button type="submit" class="btn btn-lg btn-primary px-4">
                <i class="bi bi-save me-1"></i> Guardar cambios
            </button>
        </div>
    </div>
</section>