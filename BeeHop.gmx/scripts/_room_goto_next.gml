/// _room_goto_next()

var t = oTransition;

if(t.t_state == transition.ready){
    with(t){
        t_state = transition.busy;
        t_room = _room.next;
        event_user(0);
    }
}
