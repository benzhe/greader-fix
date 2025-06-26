package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;

/* loaded from: classes2.dex */
public class uv6 {
    public SharedPreferences a;
    public SharedPreferences.Editor b = null;

    public uv6(Context context) {
        this.a = context.getSharedPreferences("com.noinnion.android.greader.reader.widget.WidgetPreferences", 0);
    }

    public static String g(int i, String str) {
        return jo.h("prefix_", i, str);
    }

    public void a(int i) {
        SharedPreferences.Editor editorE = e();
        editorE.remove(g(i, "widget_type"));
        editorE.remove(g(i, "tag"));
        editorE.remove(g(i, "title"));
        editorE.remove(g(i, "position"));
        editorE.remove(g(i, "unread_only"));
        editorE.remove(g(i, "item_limit"));
        editorE.remove(g(i, "scroll_speed"));
        editorE.remove(g(i, "text_color"));
        editorE.remove(g(i, "background_opacity"));
        editorE.remove(g(i, "background_color"));
        editorE.remove(g(i, "show_thumbnail"));
        editorE.remove(g(i, "show_tts_button"));
        editorE.commit();
    }

    public boolean b(Context context, int i) {
        int iH0;
        String string = this.a.getString(g(i, "show_thumbnail"), null);
        int i2 = (string == null || string.length() == 0) ? 1 : Integer.parseInt(string);
        if (i2 == 0) {
            return true;
        }
        return (i2 == 1 || (iH0 = n56.H0(context)) == -1 || i2 != 2 || iH0 == 2) ? false : true;
    }

    public int c(int i) {
        return this.a.getInt(g(i, "background_color"), Color.parseColor("#33b5e5"));
    }

    public int d(int i) {
        String string = this.a.getString(g(i, "background_opacity"), null);
        if (string == null || string.length() == 0) {
            return 100;
        }
        return Integer.parseInt(string);
    }

    public SharedPreferences.Editor e() {
        if (this.b == null) {
            this.b = this.a.edit();
        }
        return this.b;
    }

    public int f(int i) {
        String string = this.a.getString(g(i, "item_limit"), null);
        if (string == null || string.length() == 0) {
            return 20;
        }
        return Integer.parseInt(string);
    }

    public void finalize() throws Throwable {
        super.finalize();
        SharedPreferences.Editor editor = this.b;
        if (editor != null) {
            editor.commit();
        }
    }

    public int h(int i) {
        return this.a.getInt(g(i, "position"), 0);
    }

    public int i(int i) {
        String string = this.a.getString(g(i, "scroll_speed"), null);
        if (string == null || string.length() == 0) {
            return 0;
        }
        return Integer.parseInt(string);
    }

    public String j(int i) {
        return this.a.getString(g(i, "tag"), null);
    }

    public int k(int i) {
        return this.a.getInt(g(i, "text_color"), Color.parseColor("#ffffff"));
    }

    public String l(int i) {
        return this.a.getString(g(i, "title"), "");
    }

    public boolean m(int i) {
        return this.a.getBoolean(g(i, "unread_only"), true);
    }

    public void n(int i, int i2) {
        String strG = g(i, "position");
        SharedPreferences.Editor editorE = e();
        editorE.putInt(strG, i2);
        editorE.commit();
    }

    public void o(int i, String str) {
        String strG = g(i, "tag");
        SharedPreferences.Editor editorE = e();
        editorE.putString(strG, str);
        editorE.commit();
    }

    public void p(int i, String str) {
        String strG = g(i, "title");
        SharedPreferences.Editor editorE = e();
        editorE.putString(strG, str);
        editorE.commit();
    }

    public void q(int i, int i2) {
        String strG = g(i, "widget_type");
        SharedPreferences.Editor editorE = e();
        editorE.putInt(strG, i2);
        editorE.commit();
    }
}
