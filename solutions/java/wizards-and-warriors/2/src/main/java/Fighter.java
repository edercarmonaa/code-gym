class Fighter {

    boolean isVulnerable() {
        return true;
    }

    int getDamagePoints(Fighter fighter) {
        return 1;
    }
}


class Warrior extends Fighter {
    @Override
   public String toString() {
        return "Fighter is a Warrior";
    }
    
    boolean isVulnerable() {
        return false;
    }

    int getDamagePoints(Fighter fighter) {
        return fighter.isVulnerable() ? 10 : 6;
    }
   
}

class Wizard extends Fighter {
    boolean isprepared = false;
    @Override
   public String toString() {
        return "Fighter is a Wizard";
    }
    public void prepareSpell(){
        this.isprepared = true;
    }
    boolean isVulnerable() {
        return this.isprepared ? false : true;
    }

    int getDamagePoints(Fighter fighter) {
        return this.isprepared ? 12 : 3;
    }
   
}