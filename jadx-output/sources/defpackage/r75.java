package defpackage;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public class r75 extends RecyclerView.e<a> {
    public final a75<?> a;

    public static class a extends RecyclerView.a0 {
        public final TextView a;

        public a(TextView textView) {
            super(textView);
            this.a = textView;
        }
    }

    public r75(a75<?> a75Var) {
        this.a = a75Var;
    }

    public int a(int i) {
        return i - this.a.h.e.g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public int getItemCount() {
        return this.a.h.i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public void onBindViewHolder(RecyclerView.a0 a0Var, int i) {
        a aVar = (a) a0Var;
        int i2 = this.a.h.e.g + i;
        String string = aVar.a.getContext().getString(R$string.mtrl_picker_navigate_to_year_description);
        aVar.a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        aVar.a.setContentDescription(String.format(string, Integer.valueOf(i2)));
        y65 y65Var = this.a.k;
        Calendar calendarC = p75.c();
        x65 x65Var = calendarC.get(1) == i2 ? y65Var.f : y65Var.d;
        Iterator<Long> it = this.a.g.m0().iterator();
        while (it.hasNext()) {
            calendarC.setTimeInMillis(it.next().longValue());
            if (calendarC.get(1) == i2) {
                x65Var = y65Var.e;
            }
        }
        x65Var.b(aVar.a);
        aVar.a.setOnClickListener(new q75(this, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_year, viewGroup, false));
    }
}
