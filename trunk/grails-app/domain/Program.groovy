

class Program {
	
	static searchable = {content: spellCheck 'include'};

    static constraints = {
		//id(max:Integer.MAX_VALUE, nullable:false)
		title(maxSize:255, nullable:true)
		programkey(maxSize:25, nullable:false)
		createdate(nullable:true)
		createby(maxSize:30, nullable:true)
		lastmoddate(nullable:true)
		lastmodby(maxSize:30, nullable:true)
    }
	
	static hasMany = [episode:Episode]
	
	
	//Integer id
	String title
	String programkey
	Date createdate
	String createby
	Date lastmoddate
	String lastmodby
	
	static mapping = {
		version false
		episode sort: "createdate"
		//id generator: 'assigned', name: "id", type: 'Integer'
		id column: 'programid'
		}
	
	String toString(){
		return title
	}
	

	
}
