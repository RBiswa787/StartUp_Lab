class CourseData {
  String course_name = "ABC";
  String video_id = "KfhBsahIk7w";
  String course_desc = "Description";
  CourseData() {
    this.course_name = "ABC";
    this.course_desc = "Description";
    this.video_id = "KfhBsahIk7w";
  }
  void UpdateData(
      String course_name_p, String video_id_p, String course_desc_p) {
    this.course_name = course_name_p;
    this.video_id = video_id_p;
    this.course_desc = course_desc_p;
  }
}

CourseData init_obj;

//void Initialize() {
//  init_obj.UpdateData("Chapter Name", "KfhBsahIk7w", "Description");
//}
