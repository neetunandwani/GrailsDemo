<div class="eIW eTheme2">
    <div class="eRow eBreak ePb">
        <div class="eGCol12 eGPush0">

            <gt:customTag type="h2" class="eAlignC" body="Det är oss du möter på Egreement"/>

        </div>
    </div>

    <div class="eRow eBreak ePt">
        <div class="eGCol12 eGPush0">
            <div class="eRow eBreak">
                <!-- Accessing data in a loop -->
                <g:each in="${personInfo}" var="person">
                    <g:render template="personInfo" model="[person: person.value]"/>
                </g:each>

            </div>
        </div>
    </div>

</div>