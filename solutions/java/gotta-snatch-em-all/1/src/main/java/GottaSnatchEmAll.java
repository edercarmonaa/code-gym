import java.util.List;
import java.util.Set;
import java.util.HashSet;

class GottaSnatchEmAll {

    static Set<String> newCollection(List<String> cards) {
        Set<String> set = new HashSet<>();
        for (String card : cards) {
            set.add(card);
        }
        return set;
    }

    static boolean addCard(String card, Set<String> collection) {
        return collection.add(card);
    }

    static boolean canTrade(Set<String> myCollection, Set<String> theirCollection) {
        if (myCollection.isEmpty() || theirCollection.isEmpty()){
            return false;
        }else if (myCollection.equals(theirCollection)){
            return false;
        }else if (myCollection.containsAll(theirCollection) || theirCollection.containsAll(myCollection)){
            return false;
        }
        return true;
    }

    static Set<String> commonCards(List<Set<String>> collections) {
        if (collections == null || collections.isEmpty()) {
            return new HashSet<>();
        }
        Set<String> set = new HashSet<>(collections.get(0));
        for (int i = 1; i < collections.size(); i++) {
            set.retainAll(collections.get(i));
        }
         return set;
    }

    static Set<String> allCards(List<Set<String>> collections) {
        Set<String> set = new HashSet<>();
        for (Set<String> collection : collections) {
            for (String card : collection) {
                set.add(card);
            }
        }
         return set;
    }
}
