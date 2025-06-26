package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.MaterialCalendarGridView;
import defpackage.a75;
import java.util.Iterator;

/* loaded from: classes.dex */
public class j75 implements AdapterView.OnItemClickListener {
    public final /* synthetic */ MaterialCalendarGridView e;
    public final /* synthetic */ k75 f;

    public j75(k75 k75Var, MaterialCalendarGridView materialCalendarGridView) {
        this.f = k75Var;
        this.e = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        i75 adapter = this.e.getAdapter();
        if (i >= adapter.b() && i <= adapter.d()) {
            a75.f fVar = this.f.d;
            long jLongValue = this.e.getAdapter().getItem(i).longValue();
            a75.d dVar = (a75.d) fVar;
            if (a75.this.h.g.g0(jLongValue)) {
                a75.this.g.C0(jLongValue);
                Iterator it = a75.this.e.iterator();
                while (it.hasNext()) {
                    ((l75) it.next()).a(a75.this.g.r0());
                }
                a75.this.m.getAdapter().notifyDataSetChanged();
                RecyclerView recyclerView = a75.this.l;
                if (recyclerView != null) {
                    recyclerView.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }
}
