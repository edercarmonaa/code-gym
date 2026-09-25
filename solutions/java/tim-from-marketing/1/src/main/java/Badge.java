class Badge {
    public String print(Integer id, String name, String department) {
        return   department != null ? id != null ?"["+id+"]" + " - " + name + " - " + department.toUpperCase() : name + " - " + department.toUpperCase() : id != null ?"["+id+"]" + " - " + name + " - OWNER" : name + " - OWNER";
    }
}
