class Course{
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course({required this.author,required this.authorImg,required this.title,required this.imageUrl});

  static List<Course> generatedCourse(){
    return [
      Course(author: "Michael Jackson", authorImg:"assets/images/author-1.png", title:"Plants", imageUrl:"assets/images/course-4.jpg"),
      Course(author: "Kamala Surayya", authorImg:"assets/images/author-1.png", title:"Nature", imageUrl:"assets/images/course-6.jpg"),
      Course(author: "Michael Jackson", authorImg:"assets/images/author-1.png", title:"Plants", imageUrl:"assets/images/course-7.jpg"),
      Course(author: "Kamala Surayya", authorImg:"assets/images/author-1.png", title:"Nature", imageUrl:"assets/images/course-4.jpg"),

    ];
  }

}