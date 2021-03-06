{adminheader}
<div class="z-admin-content-pagetitle">
    {icon type="display" size="small"}
    <h3>{gt text="View submitted form data"}</h3>
</div>

<p>
    {gt text='A visitor (name %1$s, uid %2$s) of your web site used form #%3$s for contact and sent the following on %4$s' tag1=$submit.cr_uid|profilelinkbyuid tag2=$submit.cr_uid tag3=$submit.form tag4=$submit.cr_date|dateformat} <br />
    <br />
    {gt text='Contact ID / Name'} : {$submit.cid} / {$submit.name}<br />
    {gt text='Homepage'} : {$submit.url}<br />
    {gt text='Company'} : {$submit.company}<br />
    {gt text='Phone Number'} : {$submit.phone}<br />
    {gt text='Location'} : {$submit.location}
</p>
<hr />
<p>
    {gt text='Custom Fields:'}<br />
    {foreach item=field key=k from=$submit.customdata}
    {$k} : {$field}<br />
    {/foreach}
</p>
<hr />
<p>
    {gt text='Comment'} : {$submit.comment|safehtml|nl2br} <br />
    <br />
    {gt text='The user submitted from the following IP address/hostname: '} {$submit.ip} / {$submit.host} <br />
</p>

{adminfooter}