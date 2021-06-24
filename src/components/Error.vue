<template>
<div>
<br>
     <div class="alert alert-danger" role="alert">
            {{error}}
        </div>

</div>
</template>
<script>
export default{
    name:'Error',
    props:['error']
}
</script>
