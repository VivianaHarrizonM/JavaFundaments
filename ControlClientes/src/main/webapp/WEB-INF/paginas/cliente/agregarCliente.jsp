<%-- 
    Document   : agregarCliente
    Created on : 2 sept 2026, 13:37:18
    Author     : viviana-harrizon
--%>
<div class="modal fade" id="agregarClienteModal" tabindex="-1" aria-labelledby="agregarClienteLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title" id="agregarClienteLabel">
                    <i class="bi bi-person-plus-fill me-2"></i>Agregar Cliente
                </h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- Formulario para agregar un nuevo cliente -->
            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar"
                  method="POST" class="needs-validation" novalidate>
                <div class="modal-body">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required/>
                            <div class="invalid-feedback">Ingresa el nombre.</div>
                        </div>
                        <div class="col-md-6">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required/>
                            <div class="invalid-feedback">Ingresa el apellido.</div>
                        </div>
                        <div class="col-md-6">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required/>
                            <div class="invalid-feedback">Ingresa un email válido.</div>
                        </div>
                        <div class="col-md-6">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <input type="tel" class="form-control" id="telefono" name="telefono" required/>
                            <div class="invalid-feedback">Ingresa el teléfono.</div>
                        </div>
                        <div class="col-md-6">
                            <label for="saldo" class="form-label">Saldo</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text">$</span>
                                <input type="number" class="form-control" id="saldo" name="saldo" required step="any"/>
                                <div class="invalid-feedback">Ingresa un saldo válido.</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pie de la ventana modal -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-save me-1"></i>Guardar
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>