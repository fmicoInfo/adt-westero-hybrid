<#if entries?has_content>
	<#list entries as entry>
	<div class="item-doc flex-container" data-extension="${entry.getAssetRenderer().getAssetObject().getExtension()}"  data-id="${entry.getClassPK()}">
	    <img id="docs-image" class="flex-item-center docs-image" src="/documents/20143/56606/file.png/6939decf-8c2d-c195-81d4-b225403dd2f5?t=1499174224790" />
		<normal class="flex-item-expand flex-item-center name-doc">${entry.getTitle(locale)}</normal>
		<svg class="lexicon-icon flex-item-center" focusable="false" role="img" title="" >
            <use data-href="/o/classic-theme/images/lexicon/icons.svg#angle-right" />
        </svg>
	</div>
	</#list>
</#if>