package defpackage;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface ek1 {
    void L(iu3 iu3Var);

    void N();

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void b(Bundle bundle);

    void b0(u90 u90Var);

    void c(View view);

    void d(View view, Map<String, WeakReference<View>> map);

    void destroy();

    void e(Bundle bundle);

    void e0();

    void f(View view, MotionEvent motionEvent, View view2);

    void g(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void h(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void i();

    JSONObject j(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void j0(fu3 fu3Var);

    void k(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    boolean k0();

    void l();

    void m(String str);

    void n();

    boolean o(Bundle bundle);
}
