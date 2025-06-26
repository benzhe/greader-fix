package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateSelector;
import com.google.android.material.datepicker.Month;

/* loaded from: classes.dex */
public final class a75<S> extends m75<S> {
    public static final /* synthetic */ int p = 0;
    public int f;
    public DateSelector<S> g;
    public CalendarConstraints h;
    public Month i;
    public e j;
    public y65 k;
    public RecyclerView l;
    public RecyclerView m;
    public View n;
    public View o;

    public class a implements Runnable {
        public final /* synthetic */ int e;

        public a(int i) {
            this.e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            a75.this.m.m0(this.e);
        }
    }

    public class b extends v9 {
        public b(a75 a75Var) {
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            saVar.s(null);
        }
    }

    public class c extends n75 {
        public final /* synthetic */ int G;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.G = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void a1(RecyclerView.x xVar, int[] iArr) {
            if (this.G == 0) {
                iArr[0] = a75.this.m.getWidth();
                iArr[1] = a75.this.m.getWidth();
            } else {
                iArr[0] = a75.this.m.getHeight();
                iArr[1] = a75.this.m.getHeight();
            }
        }
    }

    public class d implements f {
        public d() {
        }
    }

    public enum e {
        DAY,
        YEAR
    }

    public interface f {
    }

    public LinearLayoutManager d() {
        return (LinearLayoutManager) this.m.getLayoutManager();
    }

    public final void e(int i) {
        this.m.post(new a(i));
    }

    public void h(Month month) {
        k75 k75Var = (k75) this.m.getAdapter();
        int iW = k75Var.b.e.w(month);
        int iB = iW - k75Var.b(this.i);
        boolean z = Math.abs(iB) > 3;
        boolean z2 = iB > 0;
        this.i = month;
        if (z && z2) {
            this.m.i0(iW - 3);
            e(iW);
        } else if (!z) {
            e(iW);
        } else {
            this.m.i0(iW + 3);
            e(iW);
        }
    }

    public void i(e eVar) {
        this.j = eVar;
        if (eVar == e.YEAR) {
            this.l.getLayoutManager().N0(((r75) this.l.getAdapter()).a(this.i.g));
            this.n.setVisibility(0);
            this.o.setVisibility(8);
        } else if (eVar == e.DAY) {
            this.n.setVisibility(8);
            this.o.setVisibility(0);
            h(this.i);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f = bundle.getInt("THEME_RES_ID_KEY");
        this.g = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.i = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws IllegalStateException, Resources.NotFoundException {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f);
        this.k = new y65(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month month = this.h.e;
        if (h75.d(contextThemeWrapper)) {
            i = R$layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = R$layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(R$id.mtrl_calendar_days_of_week);
        ha.s(gridView, new b(this));
        gridView.setAdapter((ListAdapter) new z65());
        gridView.setNumColumns(month.h);
        gridView.setEnabled(false);
        this.m = (RecyclerView) viewInflate.findViewById(R$id.mtrl_calendar_months);
        this.m.setLayoutManager(new c(getContext(), i2, false, i2));
        this.m.setTag("MONTHS_VIEW_GROUP_TAG");
        k75 k75Var = new k75(contextThemeWrapper, this.g, this.h, new d());
        this.m.setAdapter(k75Var);
        int integer = contextThemeWrapper.getResources().getInteger(R$integer.mtrl_calendar_year_selector_span);
        int i3 = R$id.mtrl_calendar_year_selector_frame;
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(i3);
        this.l = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.l.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.l.setAdapter(new r75(this));
            this.l.g(new b75(this));
        }
        int i4 = R$id.month_navigation_fragment_toggle;
        if (viewInflate.findViewById(i4) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(i4);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ha.s(materialButton, new c75(this));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(R$id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(R$id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.n = viewInflate.findViewById(i3);
            this.o = viewInflate.findViewById(R$id.mtrl_calendar_day_selector_frame);
            i(e.DAY);
            materialButton.setText(this.i.l(viewInflate.getContext()));
            this.m.h(new d75(this, k75Var, materialButton));
            materialButton.setOnClickListener(new e75(this));
            materialButton3.setOnClickListener(new f75(this, k75Var));
            materialButton2.setOnClickListener(new g75(this, k75Var));
        }
        if (!h75.d(contextThemeWrapper)) {
            new yf().a(this.m);
        }
        this.m.i0(k75Var.b(this.i));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.h);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.i);
    }
}
