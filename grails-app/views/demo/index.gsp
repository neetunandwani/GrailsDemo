<html><head lang="sv">
    <!-- Custom Layout that can be used in different pages with same header footer and common static resources -->
    <meta name="layout" content="custom">
</head>

<body class="eLangSv svg">

<div class="eMain" role="main">

    <section class="eOW">
        <g:render template="aboutUs"/>
    </section>
    <section class="eOW eInfoboxes" id="vilkajobbarhar">
        <!-- Passing data to temlates -->
        <g:render template="egreementPerson" model="[personInfo: personInfo]"/>
    </section>
    <section class="eOW eSidenote">
        <g:render template="efremText"/>
    </section>
</div>

</body></html>