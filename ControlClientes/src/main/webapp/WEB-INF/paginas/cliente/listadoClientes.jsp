<%-- 
    Document   : listadoClientes
    Created on : 26 ago 2026, 19:36:42
    Author     : viviana-harrizon
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Listado de clientes -->
<section id="clientes" aria-label="Listado de clientes" class="py-2">
    <div class="container">
        <div class="row g-4">
            <div class="col-lg-9">
                <div class="card shadow-sm">
                    <div class="card-header bg-transparent border-0 pt-4 pb-0">
                        <h2 class="h5 mb-3">
                            <i class="bi bi-list-ul me-2 text-primary"></i>Listado de clientes
                        </h2>
                    </div>
                    <div class="card-body pt-0">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover align-middle mb-0">
                                <thead>
                                    <tr class="text-body-secondary small text-uppercase">
                                        <th scope="col">#</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Saldo</th>
                                        <th scope="col" class="text-end">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cliente" items="${clientes}" varStatus="status">
                                        <tr>
                                            <td class="text-body-secondary">${status.count}</td>
                                            <td class="fw-semibold">${cliente.nombre} ${cliente.apellido}</td>
                                            <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/></td>
                                            <td class="text-end">
                                                <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                                   class="btn btn-sm btn-outline-primary"
                                                   aria-label="Editar cliente ${cliente.nombre}">
                                                    <i class="bi bi-pencil"></i>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                                                   class="btn btn-sm btn-outline-danger"
                                                   aria-label="Eliminar cliente ${cliente.nombre}">
                                                    <i class="bi bi-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Totales -->
            <div class="col-lg-3">
                <div class="card bg-primary-subtle border-0 shadow-sm mb-3">
                    <div class="card-body">
                        <p class="text-uppercase small mb-1 text-primary-emphasis opacity-75">Saldo total</p>
                        <p class="display-6 fw-bold mb-0 text-primary-emphasis">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </p>
                    </div>
                </div>
                <div class="card bg-info-subtle border-0 shadow-sm">
                    <div class="card-body">
                        <p class="text-uppercase small mb-1 text-info-emphasis opacity-75">Total clientes</p>
                        <p class="display-6 fw-bold mb-0 text-info-emphasis">
                            <i class="bi bi-people"></i> ${totalClientes}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>