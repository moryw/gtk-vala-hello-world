public class MyApp : Gtk.Application {
  public MyApp () {
    Object (
      application_id: "com.github.moryw.gtk-vala-hello-world",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate () {
    var button_hello = new Gtk.Button.with_label ("Click me!") {
      margin_top = 125,
      margin_bottom = 125,
      margin_start = 125,
      margin_end = 125
    };

    button_hello.clicked.connect (() => {
      button_hello.label = "Clicked!";
      button_hello.sensitive = false;
    });

    var main_window = new Gtk.ApplicationWindow (this) {
      child = button_hello,
      default_height = 300,
      default_width = 300,
      title = "My App"
    };

    main_window.present ();
  }

  public static int main (string[] args) {
    return new MyApp ().run (args);
  }
}