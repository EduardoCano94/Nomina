<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">

            <div class="card">
                <h3 class="text-center mb-4">Iniciar Sesión</h3>

                <form action="LoginSv" method="POST">
                    <div class="mb-3">
                        <label for="username" class="form-label">Usuario</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Ingrese su usuario" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                </form>

                <% if (request.getParameter("error") != null) { %>
                    <div class="alert alert-danger mt-3" role="alert">
                        <%= request.getParameter("error") %>
                    </div>
                <% } %>

            </div>

        </div>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle (Opcional para funciones como modales o alertas dinámicas) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
