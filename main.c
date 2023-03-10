#include <gtk/gtk.h>

int main(int argc, char **argv) {
    gtk_init(&argc, &argv);
    GtkBuilder *builder = gtk_builder_new();
    gtk_builder_add_from_file(builder, "glade/window_main.glade", NULL);
    GtkWidget *window = GTK_WIDGET(gtk_builder_get_object(builder, "window_main"));
    g_object_unref(builder);
    gtk_widget_show(window);

    gtk_main();

    return 0;
}

void on_window_main_destroy() {
    gtk_main_quit();
}

