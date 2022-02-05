{if $oConfig->GetValue("plugin.attachments.ShowAttachedFiles") or (($oUserCurrent and $oUserCurrent->isAdministrator()) and ($oConfig->GetValue("plugin.attachments.ShowAttachedFilesForAdmins")))}
    {assign var="AttachedFilesList" value=$oTopic->getAttachments()}
    {if $AttachedFilesList}
        <!-- Attachments plugin -->
        <ul class="AttachmentsInTopic">
            {$aLang.plugin.attachments.files_in_topics}

            {foreach from=$AttachedFilesList item=oFile name=nFileList}
            <li>
                <a href="{router page='attachments'}get/{$oFile.attachment_id}">{$oFile.attachment_name}</a>{*{if !$smarty.foreach.nFileList.last} {/if}*}
            </li>
            {/foreach}
            {*
array(8) {
    ["attachment_id"]       =>    string(4) "1281"
    ["topic_id"]            =>    string(5) "17482"
    ["user_id"]             =>    string(4) "9432"
    ["attachment_name"]     =>    string(33) "+++++18899397673_b9d5323abf_o.jpg"
    ["attachment_size"]     =>    string(6) "152616"
    ["attachment_extension"]=>    string(3) "jpg"
    ["attachment_url"]      =>    string(68) "/uploads/files/00/94/32/2022/02/06/+++++18899397673_b9d5323abf_o.jpg"
    ["attachment_form_id"]  =>    string(0) ""
}
            *}
        </ul>
        <!-- /Attachments plugin -->
    {/if}
{/if}
