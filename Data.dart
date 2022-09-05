class Category{
  final int id;
  final String title;
  final String imageFileName;
  Category({required this.id,required this.title,required this.imageFileName});
}

class AppDataBase{
  static List<Category> get categories{
    return [
      Category(
      id: 1001, 
      title: "Data Science", 
      imageFileName: 'data.jpg'
      ),
      Category(
      id: 1002, 
      title: "Data Science", 
      imageFileName: 'data.jpg'
      ),
      Category(
      id: 1003, 
      title: "Data Science", 
      imageFileName: 'data.jpg'
      ),
      Category(
      id: 1004, 
      title: "Data Science", 
      imageFileName: 'data.jpg'
      ),
      Category(
      id: 1005, 
      title: "Data Science", 
      imageFileName: 'data.jpg'
      ),

    ];
  }
}
