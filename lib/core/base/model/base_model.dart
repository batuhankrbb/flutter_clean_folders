abstract class BaseModel<T> {
  Map<String, dynamic> toJSON();

  T fromJSON(Map<String, dynamic> json);
}
