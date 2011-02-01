import java.util.Date;


class Episode {
	
	static searchable = { except = ['belongsToProgram'] };

    static constraints = {
		//id(blank:false, max:Integer.MAX_VALUE, nullable:false, insert:false, update:false)
		editionid(blank:false, max:Integer.MAX_VALUE, nullable:false)
		title(maxSize:255, nullable:true)
		synopsis(maxSize:4000, nullable:true)
		timezone(maxSize:24, nullable:true)
		region(maxSize:24, nullable:true)
		startdate(blank:false, nullable:true)
		enddate(nullable:true)
		ratingid(nullable:true, max:Integer.MAX_VALUE)
		createdate(nullable:true)
		createby(maxSize:30, nullable:true)
		lastmoddate(nullable:true)
		lastmodby(maxSize:30, nullable:true)
		//program(nullable:true)
    }
	
	//Integer id
	Integer editionid
	String title
	String synopsis
	String timezone
	String region
	Date startdate
	Date enddate
	Integer ratingid
	Date createdate
	String createby
	Date lastmoddate
	String lastmodby
	Program program
	
	String toString(){
		return title;
	}
	
	static mapping = {
		version false
		//id generator: 'assigned', name: "id", type: 'Integer'
		id column:'episodeid'
		program column:'programid'
		}
	
	
}
