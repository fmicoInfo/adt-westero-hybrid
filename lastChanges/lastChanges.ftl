<#if entries?has_content>
	<#list entries as entry>
	<#assign assetRenderer = entry.getAssetRenderer()>
    <#if assetRenderer.getClassName() == 'com.liferay.blogs.kernel.model.BlogsEntry' >
	<div class="flex-container item-last-changes" style="margin-bottom: 50px;" data-class-name="${assetRenderer.getClassName()}" data-extension="blog" data-id="${entry.getAssetRenderer().getClassPK()}">
	        <div class="flex-item-center item-img-container">
	            <img alt="" class="item-img" style="width:150px" src="${assetRenderer.getAssetObject().getSmallImageURL(themeDisplay)}"/>
	        </div>
	        <div class="flex-item-expand flex-item-center item-text">
	            <normal class="item-description">New blog</normal></br>
	            <normal class="item-title">${entry.getTitle()} </normal> 
	        </div>
    </div>
    <#elseif assetRenderer.getClassName() == 'com.liferay.document.library.kernel.model.DLFileEntry'>
        <div class="flex-container item-last-changes" style="margin-bottom: 50px;" data-class-name="${assetRenderer.getClassName()}" data-extension="${entry.getAssetRenderer().getAssetObject().getExtension()}" data-id="${entry.getClassPK()}" data-url="${entry.getUrl()}">
	        <div class="flex-item-center item-img-container">
	            <img alt="" class="item-icon" src="/documents/20143/56606/file.png/6939decf-8c2d-c195-81d4-b225403dd2f5?t=1499174224790"/>
	        </div>
	        <div class="flex-item-expand flex-item-center item-text">
	            <normal class="item-description">New doc</normal></br>
	            <normal class="item-title">${entry.getTitle()} </normal> 
	        </div>
    </div>
    </#if>
	</#list>
</#if>