//// Bullet destroy itself wenn diese nicht den Creator trifft
if(other.id == self.creator) exit;

else instance_destroy();

// Check if Object is Part of our Faction
if(other.faction == self.faction) exit;

// Damage Object
with(other) event_perform(ev_other, ev_user0);