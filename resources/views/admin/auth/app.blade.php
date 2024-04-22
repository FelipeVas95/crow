<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
      <title>{{ config('app.name') }} | Admin</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
         <link rel="icon" href="{{ asset('images/crow.png') }}" type="image/x-icon">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    
</head>

<body>
    <header>
        <!-- place navbar here -->
    </header>
    <main>
        <section class="vh-100" style="background-color: #515151;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <div class="d-flex align-items-center justify-content-center" style="width:100%;padding-top:10em;padding-bottom:10em;">
                                    
                                        <img src="images/crow.png" id="image1" alt="Imagen 1" class="image"  style="display:block"/>
                                        <img src="images/crow2.png" id="image2" alt="Imagen 2" class="image"  style="display:none"/>
                                        <img src="images/crow3.png" id="image3" alt="Imagen 2" class="image"  style="display:none"/>
                                        <img src="images/crow4.png" id="image4" alt="Imagen 2" class="image"  style="display:none"/>
                                        <img src="images/crow5.png" id="image5" alt="Imagen 2" class="image"  style="display:none"/>
                                    
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">
                                        <a><i class="fa fa-language">&nbsp;</i>@include('layouts.languageSelector')</a>
                                        <form>

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                <span class="h1 fw-bold mb-0"><?=  trans_choice('auth.Login', 0)  ?> </span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;"><?=  trans_choice('auth.Login', 1) ?></h5>

                                            <div class="form-outline mb-4">
                                                <input type="email" id="form2Example17"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label" for="form2Example17"><?= trans('auth.Email')?></label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="form2Example27"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label" for="form2Example27"><?= trans('auth.Pass')?></label>
                                            </div>

                                            <div class="pt-1 mb-4">
                                                <button class="btn btn-dark btn-lg btn-block"
                                                    type="button"><?= trans_choice('auth.Login', 0) ?></button>
                                            </div>

                                            <a class="small text-muted" href="#!"><?= trans('auth.Forgot')?></a>
                                            <p class="mb-5 pb-lg-2" style="color: #393f81;"><?= trans('auth.No Register')?> <a
                                                href="{{ route('register') }}" style="color: #393f81;"><?= trans('auth.RegisterHere')?></a></p>
                                            <a href="#!" class="small text-muted">Terms of use.</a>
                                            <a href="#!" class="small text-muted">Privacy policy</a>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <!-- place footer here -->
    </footer>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous">
    </script>
    <script src="{{ asset('js/test.js') }}"></script>
</body>

</html>
