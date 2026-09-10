<%-- 
    Document   : clientes
    Created on : 19 ago 2026, 12:56:59
    Author     : viviana-harrizon
--%>

<!doctype html>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="icon.png">

    <title>Control de clientes</title>

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
        <!--Cabecero-->
      <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>
      
      <!--Botones de Navegación-->
      <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacion.jsp"/>
      
      <!--Listado de Clientes-->
      <jsp:include page="/WEB-INF/paginas/cliente/listadoClientes.jsp"/>
    
      <!--Modal para agregar un cliente--->
      <jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>
    
      <!--Pie de página--->
      <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
 
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