package defpackage;

import android.view.View;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.Month;
import defpackage.a75;
import java.util.Calendar;

/* loaded from: classes.dex */
public class q75 implements View.OnClickListener {
    public final /* synthetic */ int e;
    public final /* synthetic */ r75 f;

    public q75(r75 r75Var, int i) {
        this.f = r75Var;
        this.e = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = this.e;
        int i2 = this.f.a.i.f;
        Calendar calendarD = p75.d();
        calendarD.set(1, i);
        calendarD.set(2, i2);
        Month month = new Month(calendarD);
        CalendarConstraints calendarConstraints = this.f.a.h;
        if (month.compareTo(calendarConstraints.e) < 0) {
            month = calendarConstraints.e;
        } else if (month.compareTo(calendarConstraints.f) > 0) {
            month = calendarConstraints.f;
        }
        this.f.a.h(month);
        this.f.a.i(a75.e.DAY);
    }
}
