class User {
	String name;
	int age;

	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}

		boolean b = obj instanceof User;
		if (b) {
			User u = (User)obj;

			if (this.age == u.age && this.name.equals(u.name)) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
}