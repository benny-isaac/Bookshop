@extends('weblayout.app')
@section('content')

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Meet the Team</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Services  -->
    <div class="services-box-main">
        <div class="container">

            <div class="row my-4">
                <div class="col-sm-6 col-lg-4 mx-auto">
                    <div class="hover-team">
                        <div class="our-team"> <img src="{{ asset('webassets/images/h.jpg') }}" alt="" />
                            <div class="team-content">
                                <h3 class="title">Hansen Joseph Donkor</h3> <span class="post">Lead Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Hansen Joseph Donkor is an accomplished Lead Developer with extensive experience in software development and team leadership. He excels in designing and implementing robust, scalable solutions that meet client needs. Hansen's expertise spans multiple programming languages and frameworks, making him a versatile and innovative leader in the tech industry.
                            </p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="{{ asset('webassets/images/l.jpg') }}" alt="" />
                            <div class="team-content">
                                <h3 class="title">Leslie Ofosu Kontoh
                                </h3> <span class="post">Database Administrator</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Leslie Ofosu Kontoh is a skilled Database Administrator known for his proficiency in database management and optimization. He has a keen eye for ensuring data integrity, security, and performance. Leslie's dedication to maintaining and enhancing database systems supports efficient and reliable data operations for the organization.
                            </p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="{{ asset('webassets/images/b.jpg') }}" alt="" />
                            <div class="team-content">
                                <h3 class="title">Bryan Anaafi</h3> <span class="post">UI/UX Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Bryan Anaafi is a creative UI/UX Designer who specializes in crafting user-centered designs that enhance the overall user experience. His strong background in graphic design and user interface development enables him to create intuitive and visually appealing interfaces. Bryan is passionate about solving design challenges and improving user interactions through innovative design solutions.</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
            </div>

        </div>
    </div>
    <!-- End Services -->
@endsection