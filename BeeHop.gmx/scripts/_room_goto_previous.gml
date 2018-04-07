/// _room_goto_next()

var t = oTransition;

if(t.t_state == transition.ready){
    with(t){
        t_state = transition.busy;
        t_room = _room.prev;
        event_user(0);
    }
}


