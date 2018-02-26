<form class="subscribe-form" method="post" action="{{route('subscribe')}}">
    {{csrf_field()}}
    <input class="email input-standard-grey input-white" name="subs_email" required="required" placeholder="Your Email Address" type="email">
    <button class="subscr-btn">subscribe
        <span class="semicircle--right"></span>
    </button>
</form>