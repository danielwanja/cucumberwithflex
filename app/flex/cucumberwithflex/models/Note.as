package cucumberwithflex.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="notes")]
  [Bindable]
  public class Note extends RxModel {
    public static const LABEL:String = "title";

    public var title:String = "";

    public var body:String = "";

    public function Note() {
      super(LABEL);
    }
  }
}
