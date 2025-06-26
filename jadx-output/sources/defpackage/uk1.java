package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class uk1 implements j70 {
    public final /* synthetic */ xl1 a;
    public final /* synthetic */ ViewGroup b;
    public final /* synthetic */ tk1 c;

    public uk1(tk1 tk1Var, xl1 xl1Var, ViewGroup viewGroup) {
        this.c = tk1Var;
        this.a = xl1Var;
        this.b = viewGroup;
    }

    @Override // defpackage.j70
    public final JSONObject Z() {
        return this.a.Z();
    }

    @Override // defpackage.j70
    public final void a0() {
        xl1 xl1Var = this.a;
        String[] strArr = rk1.s;
        Map<String, WeakReference<View>> mapZ4 = xl1Var.z4();
        boolean z = false;
        if (mapZ4 != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (mapZ4.get(strArr[i]) != null) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            this.a.onClick(this.b);
        }
    }

    @Override // defpackage.j70
    public final void b0(MotionEvent motionEvent) {
        this.a.onTouch(null, motionEvent);
    }
}
