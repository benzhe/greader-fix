package defpackage;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public class pc extends Fragment {
    public final Handler e = new Handler();
    public final Runnable f = new a();
    public final AdapterView.OnItemClickListener g = new b();
    public ListAdapter h;
    public ListView i;
    public View j;
    public TextView k;
    public View l;
    public View m;
    public boolean n;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListView listView = pc.this.i;
            listView.focusableViewAvailable(listView);
        }
    }

    public class b implements AdapterView.OnItemClickListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            pc.this.e((ListView) adapterView, view, i, j);
        }
    }

    public final void d() {
        if (this.i != null) {
            return;
        }
        View view = getView();
        if (view == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView) {
            this.i = (ListView) view;
        } else {
            TextView textView = (TextView) view.findViewById(16711681);
            this.k = textView;
            if (textView == null) {
                this.j = view.findViewById(R.id.empty);
            } else {
                textView.setVisibility(8);
            }
            this.l = view.findViewById(16711682);
            this.m = view.findViewById(16711683);
            View viewFindViewById = view.findViewById(R.id.list);
            if (!(viewFindViewById instanceof ListView)) {
                if (viewFindViewById != null) {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
            }
            ListView listView = (ListView) viewFindViewById;
            this.i = listView;
            View view2 = this.j;
            if (view2 != null) {
                listView.setEmptyView(view2);
            }
        }
        this.n = true;
        this.i.setOnItemClickListener(this.g);
        ListAdapter listAdapter = this.h;
        if (listAdapter != null) {
            this.h = null;
            h(listAdapter);
        } else if (this.l != null) {
            i(false, false);
        }
        this.e.post(this.f);
    }

    public void e(ListView listView, View view, int i, long j) {
        throw null;
    }

    public void h(ListAdapter listAdapter) {
        boolean z = this.h != null;
        this.h = listAdapter;
        ListView listView = this.i;
        if (listView != null) {
            listView.setAdapter(listAdapter);
            if (this.n || z) {
                return;
            }
            i(true, requireView().getWindowToken() != null);
        }
    }

    public final void i(boolean z, boolean z2) {
        d();
        View view = this.l;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.n == z) {
            return;
        }
        this.n = z;
        if (z) {
            if (z2) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
                this.m.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            } else {
                view.clearAnimation();
                this.m.clearAnimation();
            }
            this.l.setVisibility(8);
            this.m.setVisibility(0);
            return;
        }
        if (z2) {
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            this.m.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out));
        } else {
            view.clearAnimation();
            this.m.clearAnimation();
        }
        this.l.setVisibility(0);
        this.m.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.e.removeCallbacks(this.f);
        this.i = null;
        this.n = false;
        this.m = null;
        this.l = null;
        this.j = null;
        this.k = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        d();
    }
}
