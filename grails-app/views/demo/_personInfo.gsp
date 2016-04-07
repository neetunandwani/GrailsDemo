<div class="eInfobox eToggleContainer eGCol6 ${person.customClass}">

    <div class="eRow eBreak">

        <div class="eGCol4 eGPush0">
            <!-- Access static resources -->
            <img src="${resource(dir: "images", file: "${person.imgName}")}"
                 alt="${personname}" class="eLazy">
        </div>

        <div class="eGCol8 eGPush4 eInfoboxInfo">
            <!-- Create custom tag to render different tag with different properties -->
            <gt:customTag type="h3" body="${person.name}"/>
            <gt:customTag class="eTitle" type="p" body="${person.designation}"/>

            <p>
                <gt:customTag href="tel:+46768588851"
                              title="Tel ${person.phone}" body="${person.phone}" type="a"/>

            </p>

            <p>

                <gt:customTag href="mailto:${person.email}" type="a" body="${person.email}"
                              title="Mail ${person.email}"/>
            </p>

            <blockquote>
                <gt:customTag class="s"
                              type="p" body="${person.about}"/>
            </blockquote>
        </div>

    </div>

</div>

