<%-- 
    Document   : editarCliente
    Created on : 9 sept 2026, 13:38:58
    Author     : viviana-harrizon
--%>
<!doctype html>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="icon.png">

    <title>Editar cliente</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
  </head>
  <body>
    <!-- Cabecero -->
    <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

    <section class="py-4">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="card shadow-lg border-0 overflow-hidden">
                        <!-- Encabezado destacado de la tarjeta -->
                        <div class="p-4 text-white"
                             style="background: linear-gradient(135deg, #0d6efd, #0dcaf0);">
                            <div class="d-flex align-items-center gap-3">
                                <div class="bg-white bg-opacity-25 rounded-circle p-3 d-flex align-items-center justify-content-center"
                                     style="width: 56px; height: 56px;">
                                    <i class="bi bi-pencil-square fs-4"></i>
                                </div>
                                <div>
                                    <h1 class="h4 mb-0 fw-bold">Editar Cliente</h1>
                                    <p class="mb-0 opacity-75 small">
                                        ${cliente.nombre} ${cliente.apellido} &middot; ID #${cliente.idCliente}
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="card-body p-4 p-md-5">
                            <!-- Formulario de edición de un cliente -->
                            <form action="${pageContext.request.contextPath}/ServletControlador?accion=actualizar"
                                  method="POST" class="needs-validation" novalidate>

                                <input type="hidden" name="idCliente" value="${cliente.idCliente}">

                                <div class="row g-4 mb-4">
                                    <div class="col-md-6">
                                        <label for="nombre" class="form-label fw-semibold">
                                            <i class="bi bi-person me-1 text-primary"></i>Nombre
                                        </label>
                                        <input type="text" class="form-control form-control-lg" id="nombre" name="nombre"
                                               value="${cliente.nombre}" required/>
                                        <div class="invalid-feedback">Ingresa el nombre.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="apellido" class="form-label fw-semibold">
                                            <i class="bi bi-person me-1 text-primary"></i>Apellido
                                        </label>
                                        <input type="text" class="form-control form-control-lg" id="apellido" name="apellido"
                                               value="${cliente.apellido}" required/>
                                        <div class="invalid-feedback">Ingresa el apellido.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="email" class="form-label fw-semibold">
                                            <i class="bi bi-envelope me-1 text-primary"></i>Email
                                        </label>
                                        <input type="email" class="form-control form-control-lg" id="email" name="email"
                                               value="${cliente.email}" required/>
                                        <div class="invalid-feedback">Ingresa un email válido.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="telefono" class="form-label fw-semibold">
                                            <i class="bi bi-telephone me-1 text-primary"></i>Teléfono
                                        </label>
                                        <input type="tel" class="form-control form-control-lg" id="telefono" name="telefono"
                                               value="${cliente.telefono}" required/>
                                        <div class="invalid-feedback">Ingresa el teléfono.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="saldo" class="form-label fw-semibold">
                                            <i class="bi bi-cash-coin me-1 text-primary"></i>Saldo
                                        </label>
                                        <div class="input-group input-group-lg has-validation">
                                            <span class="input-group-text">$</span>
                                            <input type="number" step="any" class="form-control" id="saldo" name="saldo"
                                                   value="${cliente.saldo}" required/>
                                            <div class="invalid-feedback">Ingresa un saldo válido.</div>
                                        </div>
                                    </div>
                                </div>

                                <hr class="my-4 opacity-25">

                                <!-- Botones de navegación -->
                                <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Pie de página -->
    <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
            crossorigin="anonymous"></script>

    <script>
        (() => {
            'use strict';
            const forms = document.querySelectorAll('.needs-validation');
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
  </body>
</html>