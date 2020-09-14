<!DOCTYPE html>
<html>
<head><title></title>
    <link rel="stylesheet" href="./tachyons.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="ph3 pt0 pb4 mw7 center sans-serif">

<div class="wrapper">
    <div class="header">
        <h1 class="f2 mb0" style="color:#357edd">Note App</h1>
        <p>
            <span class="badge badge-secondary">A simple note-taking app.</span>
        </p>
    </div>
    <div class="body container">
        <form action="/note" method="POST" enctype="multipart/form-data">
            <ol class="list pl0">
                <li class="mv3">
                    <h5>Upload an image</h5>
                    <input class="f6 link dim br1 ba b--black-20 ph3 pv2 mb2 dib black bg-white pointer" type="file"
                           name="image">

                    <button type="submit" class="btn btn-info" name="upload" value="Upload">Upload</button>
                </li>
                <li class="mv3"><h5>Write your content here</h5>
                    <textarea rows="5"
                              name="description"><#if description??>${description}</#if></textarea>

                <button type="submit" class="btn btn-block btn-publish" name="publish" value="Publish">Publish</button>
            </li>
        </ol>
    </form>
    <ul class="list pl0"><h5>Notes</h5><p class="f6 b db mb2"></p>
        <#if notes??>
        <#list notes as note>
        <li class="mv3 bb bw2 b--light-yellow bg-washed-yellow ph4 pv2"><p class="measure"></p>
            <p>${note}</p>
            <p></p>
        </li>
        <#else>
        <p class="lh-copy f6">You don't have any notes yet.</p>
    </#list>
</#if>
</ul>
</div>
        </div>



        </body>
        </html>
