package com.noinnion.android.greader.ui.home;

import android.view.View;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class WelcomeActivity_ViewBinding implements Unbinder {
    public WelcomeActivity a;
    public View b;
    public View c;

    public class a extends DebouncingOnClickListener {
        public final /* synthetic */ WelcomeActivity e;

        public a(WelcomeActivity_ViewBinding welcomeActivity_ViewBinding, WelcomeActivity welcomeActivity) {
            this.e = welcomeActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.onClick(view);
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ WelcomeActivity e;

        public b(WelcomeActivity_ViewBinding welcomeActivity_ViewBinding, WelcomeActivity welcomeActivity) {
            this.e = welcomeActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.e.onClick(view);
        }
    }

    public WelcomeActivity_ViewBinding(WelcomeActivity welcomeActivity, View view) {
        this.a = welcomeActivity;
        welcomeActivity.vListView = (ListView) Utils.findRequiredViewAsType(view, R.id.v_list_view, "field 'vListView'", ListView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.rate, "method 'onButtonClick'");
        this.b = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new a(this, welcomeActivity));
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.feedback, "method 'onButtonClick'");
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, welcomeActivity));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        WelcomeActivity welcomeActivity = this.a;
        if (welcomeActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        welcomeActivity.vListView = null;
        this.b.setOnClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
    }
}
