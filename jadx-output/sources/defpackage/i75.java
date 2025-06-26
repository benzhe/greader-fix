package defpackage;

import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateSelector;
import com.google.android.material.datepicker.MaterialCalendarGridView;
import com.google.android.material.datepicker.Month;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public class i75 extends BaseAdapter {
    public static final int j = p75.d().getMaximum(4);
    public final Month e;
    public final DateSelector<?> f;
    public Collection<Long> g;
    public y65 h;
    public final CalendarConstraints i;

    public i75(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.e = month;
        this.f = dateSelector;
        this.i = calendarConstraints;
        this.g = dateSelector.m0();
    }

    public int a(int i) {
        return b() + (i - 1);
    }

    public int b() {
        return this.e.k();
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.e.k() || i > d()) {
            return null;
        }
        Month month = this.e;
        int iK = (i - month.k()) + 1;
        Calendar calendarA = p75.a(month.e);
        calendarA.set(5, iK);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    public int d() {
        return (this.e.k() + this.e.i) - 1;
    }

    public final void e(TextView textView, long j2) {
        x65 x65Var;
        if (textView == null) {
            return;
        }
        boolean z = false;
        if (this.i.g.g0(j2)) {
            textView.setEnabled(true);
            Iterator<Long> it = this.f.m0().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                long jLongValue = it.next().longValue();
                Calendar calendarD = p75.d();
                calendarD.setTimeInMillis(j2);
                long timeInMillis = p75.a(calendarD).getTimeInMillis();
                Calendar calendarD2 = p75.d();
                calendarD2.setTimeInMillis(jLongValue);
                if (timeInMillis == p75.a(calendarD2).getTimeInMillis()) {
                    z = true;
                    break;
                }
            }
            x65Var = z ? this.h.b : p75.c().getTimeInMillis() == j2 ? this.h.c : this.h.a;
        } else {
            textView.setEnabled(false);
            x65Var = this.h.g;
        }
        x65Var.b(textView);
    }

    public final void f(MaterialCalendarGridView materialCalendarGridView, long j2) {
        Calendar calendarD = p75.d();
        calendarD.setTimeInMillis(j2);
        if (new Month(calendarD).equals(this.e)) {
            Calendar calendarA = p75.a(this.e.e);
            calendarA.setTimeInMillis(j2);
            e((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(calendarA.get(5)) - materialCalendarGridView.getFirstVisiblePosition()), j2);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return b() + this.e.i;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.e.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0109  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r9, android.view.View r10, android.view.ViewGroup r11) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i75.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
