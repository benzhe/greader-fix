package defpackage;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import defpackage.d0;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class q06 {
    public final j96 a;
    public final f06 b;
    public final LayoutInflater c;

    public q06(f06 f06Var, LayoutInflater layoutInflater, j96 j96Var) {
        this.b = f06Var;
        this.c = layoutInflater;
        this.a = j96Var;
    }

    public static void i(Button button, e96 e96Var) {
        String str = e96Var.a.b;
        String str2 = e96Var.b;
        try {
            Drawable drawableL0 = d0.h.l0(button.getBackground());
            drawableL0.setTint(Color.parseColor(str2));
            button.setBackground(drawableL0);
        } catch (IllegalArgumentException e) {
            StringBuilder sbZ = jo.z("Error parsing background color: ");
            sbZ.append(e.toString());
            Log.e("FIAM.Display", sbZ.toString());
        }
        button.setText(e96Var.a.a);
        button.setTextColor(Color.parseColor(str));
    }

    public boolean a() {
        return false;
    }

    public f06 b() {
        return this.b;
    }

    public abstract View c();

    public View.OnClickListener d() {
        return null;
    }

    public abstract ImageView e();

    public abstract ViewGroup f();

    public abstract ViewTreeObserver.OnGlobalLayoutListener g(Map<b96, View.OnClickListener> map, View.OnClickListener onClickListener);

    public void h(View view, String str) {
        if (view == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            view.setBackgroundColor(Color.parseColor(str));
        } catch (IllegalArgumentException e) {
            StringBuilder sbZ = jo.z("Error parsing background color: ");
            sbZ.append(e.toString());
            sbZ.append(" color: ");
            sbZ.append(str);
            Log.e("FIAM.Display", sbZ.toString());
        }
    }
}
