package com.noinnion.android.greader.ui.subscription;

import android.app.ProgressDialog;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.bn6;
import defpackage.bv6;
import defpackage.cv6;
import defpackage.ev6;
import defpackage.u7;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscribeSearchFragment extends Fragment {
    public ProgressDialog e;
    public bv6 f;
    public ev6 g;
    public cv6 h;

    @BindView(R.id.v_empty)
    public View vEmpty;

    @BindView(R.id.v_list_view)
    public ListView vListView;

    @BindView(R.id.opml_container)
    public View vOmplContainer;

    @BindView(R.id.query)
    public AutoCompleteTextView vQueryText;

    @BindView(R.id.topic_text)
    public EditText vTopicText;

    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 3) {
                return true;
            }
            SubscribeSearchFragment.this.getView().findViewById(R.id.search_button).performClick();
            return true;
        }
    }

    public class b implements bn6 {
        public b() {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof Feed) {
                SubscribeSearchFragment.d(SubscribeSearchFragment.this, (Feed) obj);
            }
        }
    }

    public class c implements bn6 {
        public c(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            SubscribeSearchFragment.this.f.c(obj != null ? (List) obj : new ArrayList<>());
            ProgressDialog progressDialog = SubscribeSearchFragment.this.e;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            SubscribeSearchFragment.this.e.dismiss();
        }
    }

    public class d implements bn6 {
        public d(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof String) {
                String str = (String) obj;
                bv6 bv6Var = SubscribeSearchFragment.this.f;
                Objects.requireNonNull(bv6Var);
                if (str != null) {
                    bv6Var.h.add(str);
                    bv6Var.notifyDataSetChanged();
                }
            }
            ProgressDialog progressDialog = SubscribeSearchFragment.this.e;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            SubscribeSearchFragment.this.e.dismiss();
        }
    }

    public static void d(SubscribeSearchFragment subscribeSearchFragment, Feed feed) {
        subscribeSearchFragment.e = ProgressDialog.show(subscribeSearchFragment.getActivity(), null, subscribeSearchFragment.getText(R.string.msg_subscribe_feed_running), true, true);
        subscribeSearchFragment.g.a();
        subscribeSearchFragment.g.e(feed);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("input");
            if (!TextUtils.isEmpty(string)) {
                this.vQueryText.setText(string);
            }
        }
        bv6 bv6Var = new bv6(getContext(), new ArrayList());
        this.f = bv6Var;
        bv6Var.j.a("EVENT_SUBSCRIBE", new b());
        this.vListView.setAdapter((ListAdapter) this.f);
        this.g = new ev6(getContext());
        this.h = new cv6(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws NoSuchMethodException, SecurityException {
        View viewInflate = layoutInflater.inflate(R.layout.subscribe_search, viewGroup, false);
        ButterKnife.bind(this, viewInflate);
        this.vListView.setEmptyView(this.vEmpty);
        this.vQueryText.getBackground().setColorFilter(u7.b(getContext(), R.color.gray_light), PorterDuff.Mode.SRC_ATOP);
        this.vQueryText.setAdapter(new ArrayAdapter(getActivity(), android.R.layout.simple_dropdown_item_1line, new String[]{"http://", "http://www."}));
        this.vQueryText.setOnEditorActionListener(new a());
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.e = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        cv6 cv6Var = this.h;
        cv6Var.b.b("DEFAULT_FINISHED_EVENT", new c(null));
        cv6 cv6Var2 = this.h;
        cv6Var2.b.b("DEFAULT_ERROR_EVENT", new c(null));
        ev6 ev6Var = this.g;
        ev6Var.b.b("DEFAULT_FINISHED_EVENT", new d(null));
        ev6 ev6Var2 = this.g;
        ev6Var2.b.b("DEFAULT_ERROR_EVENT", new d(null));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.g.b();
        this.h.b();
    }
}
