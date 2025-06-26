package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class bg extends v9 {
    public final RecyclerView d;
    public final a e;

    public static class a extends v9 {
        public final bg d;
        public Map<View, v9> e = new WeakHashMap();

        public a(bg bgVar) {
            this.d = bgVar;
        }

        @Override // defpackage.v9
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            v9 v9Var = this.e.get(view);
            return v9Var != null ? v9Var.a(view, accessibilityEvent) : this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // defpackage.v9
        public ta b(View view) {
            v9 v9Var = this.e.get(view);
            return v9Var != null ? v9Var.b(view) : super.b(view);
        }

        @Override // defpackage.v9
        public void c(View view, AccessibilityEvent accessibilityEvent) {
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                v9Var.c(view, accessibilityEvent);
            } else {
                this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // defpackage.v9
        public void d(View view, sa saVar) {
            if (this.d.j() || this.d.d.getLayoutManager() == null) {
                this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
                return;
            }
            this.d.d.getLayoutManager().m0(view, saVar);
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                v9Var.d(view, saVar);
            } else {
                this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
            }
        }

        @Override // defpackage.v9
        public void e(View view, AccessibilityEvent accessibilityEvent) {
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                v9Var.e(view, accessibilityEvent);
            } else {
                this.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // defpackage.v9
        public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            v9 v9Var = this.e.get(viewGroup);
            return v9Var != null ? v9Var.f(viewGroup, view, accessibilityEvent) : this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // defpackage.v9
        public boolean g(View view, int i, Bundle bundle) {
            if (this.d.j() || this.d.d.getLayoutManager() == null) {
                return super.g(view, i, bundle);
            }
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                if (v9Var.g(view, i, bundle)) {
                    return true;
                }
            } else if (super.g(view, i, bundle)) {
                return true;
            }
            RecyclerView.m layoutManager = this.d.d.getLayoutManager();
            RecyclerView.t tVar = layoutManager.b.f;
            return layoutManager.E0();
        }

        @Override // defpackage.v9
        public void h(View view, int i) {
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                v9Var.h(view, i);
            } else {
                this.a.sendAccessibilityEvent(view, i);
            }
        }

        @Override // defpackage.v9
        public void i(View view, AccessibilityEvent accessibilityEvent) {
            v9 v9Var = this.e.get(view);
            if (v9Var != null) {
                v9Var.i(view, accessibilityEvent);
            } else {
                this.a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public bg(RecyclerView recyclerView) {
        this.d = recyclerView;
        a aVar = this.e;
        if (aVar != null) {
            this.e = aVar;
        } else {
            this.e = new a(this);
        }
    }

    @Override // defpackage.v9
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || j()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().j0(accessibilityEvent);
        }
    }

    @Override // defpackage.v9
    public void d(View view, sa saVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
        if (j() || this.d.getLayoutManager() == null) {
            return;
        }
        RecyclerView.m layoutManager = this.d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.b;
        layoutManager.l0(recyclerView.f, recyclerView.l0, saVar);
    }

    @Override // defpackage.v9
    public boolean g(View view, int i, Bundle bundle) {
        if (super.g(view, i, bundle)) {
            return true;
        }
        if (j() || this.d.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.m layoutManager = this.d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.b;
        return layoutManager.D0(recyclerView.f, recyclerView.l0, i, bundle);
    }

    public boolean j() {
        return this.d.M();
    }
}
