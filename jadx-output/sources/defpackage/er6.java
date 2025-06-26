package defpackage;

import android.content.Context;
import android.database.Cursor;
import com.noinnion.android.greader.reader.R;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public class er6 extends t27<nr6> {
    public ap6 l;
    public AtomicBoolean m;
    public int n;
    public long o;
    public boolean p;
    public t07 q;
    public an6 r;
    public bn6 s;
    public bn6 t;
    public bn6 u;
    public bn6 v;

    public er6(Context context, Cursor cursor) {
        super(context, null, 2);
        this.l = null;
        this.m = new AtomicBoolean(false);
        this.n = 0;
        this.o = 0L;
        this.p = false;
        this.r = new an6();
        b();
    }

    public int a(ap6 ap6Var, int i) {
        if (ap6Var == null) {
            return 0;
        }
        if (i == 1) {
            return ap6Var.v ? R.drawable.ic_read_unchecked : R.drawable.ic_read_checked;
        }
        if (i == 2) {
            return ap6Var.u ? R.drawable.ic_checkbox_blank_circle_white_24dp : R.drawable.ic_checkbox_marked_circle_white_24dp;
        }
        if (i == 3) {
            return ap6Var.r ? R.drawable.ic_star_unchecked : R.drawable.ic_star_checked;
        }
        if (i != 4) {
            return 0;
        }
        return ap6Var.s ? R.drawable.ic_window_close_white_24dp : R.drawable.ic_chevron_double_down_white_24dp;
    }

    public void b() {
        Context context = this.g;
        boolean z = iw6.E(context) > 0;
        int iH0 = n56.H0(context);
        if (!z || iH0 != 0) {
        }
        this.n = 0;
    }
}
