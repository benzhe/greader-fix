package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateSelector;
import com.google.android.material.datepicker.MaterialCalendarGridView;
import com.google.android.material.datepicker.Month;
import defpackage.a75;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class k75 extends RecyclerView.e<a> {
    public final Context a;
    public final CalendarConstraints b;
    public final DateSelector<?> c;
    public final a75.f d;
    public final int e;

    public static class a extends RecyclerView.a0 {
        public final TextView a;
        public final MaterialCalendarGridView b;

        public a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R$id.month_title);
            this.a = textView;
            AtomicInteger atomicInteger = ha.a;
            ka kaVar = new ka(androidx.core.R$id.tag_accessibility_heading, Boolean.class, 28);
            Boolean bool = Boolean.TRUE;
            if (Build.VERSION.SDK_INT >= 28) {
                kaVar.d(textView, bool);
            } else if (kaVar.e(kaVar.c(textView), bool)) {
                v9 v9VarG = ha.g(textView);
                ha.s(textView, v9VarG == null ? new v9() : v9VarG);
                textView.setTag(kaVar.a, bool);
                ha.k(textView, 0);
            }
            this.b = (MaterialCalendarGridView) linearLayout.findViewById(R$id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    public k75(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, a75.f fVar) {
        Month month = calendarConstraints.e;
        Month month2 = calendarConstraints.f;
        Month month3 = calendarConstraints.h;
        if (month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i = i75.j;
        int i2 = a75.p;
        Resources resources = context.getResources();
        int i3 = R$dimen.mtrl_calendar_day_height;
        int dimensionPixelSize = i * resources.getDimensionPixelSize(i3);
        int dimensionPixelSize2 = h75.d(context) ? context.getResources().getDimensionPixelSize(i3) : 0;
        this.a = context;
        this.e = dimensionPixelSize + dimensionPixelSize2;
        this.b = calendarConstraints;
        this.c = dateSelector;
        this.d = fVar;
        setHasStableIds(true);
    }

    public Month a(int i) {
        return this.b.e.t(i);
    }

    public int b(Month month) {
        return this.b.e.w(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        return this.b.j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public long getItemId(int i) {
        return this.b.e.t(i).e.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public void onBindViewHolder(RecyclerView.a0 a0Var, int i) {
        a aVar = (a) a0Var;
        Month monthT = this.b.e.t(i);
        aVar.a.setText(monthT.l(aVar.itemView.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) aVar.b.findViewById(R$id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthT.equals(materialCalendarGridView.getAdapter().e)) {
            i75 i75Var = new i75(monthT, this.c, this.b);
            materialCalendarGridView.setNumColumns(monthT.h);
            materialCalendarGridView.setAdapter((ListAdapter) i75Var);
        } else {
            materialCalendarGridView.invalidate();
            i75 i75VarA = materialCalendarGridView.getAdapter();
            Iterator<Long> it = i75VarA.g.iterator();
            while (it.hasNext()) {
                i75VarA.f(materialCalendarGridView, it.next().longValue());
            }
            DateSelector<?> dateSelector = i75VarA.f;
            if (dateSelector != null) {
                Iterator<Long> it2 = dateSelector.m0().iterator();
                while (it2.hasNext()) {
                    i75VarA.f(materialCalendarGridView, it2.next().longValue());
                }
                i75VarA.g = i75VarA.f.m0();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new j75(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!h75.d(viewGroup.getContext())) {
            return new a(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.n(-1, this.e));
        return new a(linearLayout, true);
    }
}
