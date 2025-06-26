package com.noinnion.android.greader.ui.subscription;

import android.app.ProgressDialog;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.jo;
import defpackage.n56;
import defpackage.ou6;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscribeSearchFragment_ViewBinding implements Unbinder {
    public SubscribeSearchFragment a;
    public View b;
    public View c;
    public View d;
    public View e;

    public class a implements AdapterView.OnItemClickListener {
        public final /* synthetic */ SubscribeSearchFragment e;

        public a(SubscribeSearchFragment_ViewBinding subscribeSearchFragment_ViewBinding, SubscribeSearchFragment subscribeSearchFragment) {
            this.e = subscribeSearchFragment;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SubscribeSearchFragment subscribeSearchFragment = this.e;
            Feed item = subscribeSearchFragment.f.getItem(i);
            item.selected = subscribeSearchFragment.f.b(item.url);
            SubscriptionDetailDialog subscriptionDetailDialog = new SubscriptionDetailDialog(subscribeSearchFragment.getActivity(), item);
            subscriptionDetailDialog.t.a("EVENT_SUBSCRIBE", new ou6(subscribeSearchFragment));
            subscriptionDetailDialog.show();
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ SubscribeSearchFragment e;

        public b(SubscribeSearchFragment_ViewBinding subscribeSearchFragment_ViewBinding, SubscribeSearchFragment subscribeSearchFragment) {
            this.e = subscribeSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SubscribeSearchFragment subscribeSearchFragment = this.e;
            n56.d1(subscribeSearchFragment.getActivity(), view);
            String strTrim = subscribeSearchFragment.vQueryText.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            subscribeSearchFragment.e = ProgressDialog.show(subscribeSearchFragment.getActivity(), null, subscribeSearchFragment.getText(R.string.msg_finding_feeds), true, true);
            subscribeSearchFragment.h.a();
            subscribeSearchFragment.h.e(strTrim.trim());
        }
    }

    public class c extends DebouncingOnClickListener {
        public final /* synthetic */ SubscribeSearchFragment e;

        public c(SubscribeSearchFragment_ViewBinding subscribeSearchFragment_ViewBinding, SubscribeSearchFragment subscribeSearchFragment) {
            this.e = subscribeSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SubscribeSearchFragment subscribeSearchFragment = this.e;
            n56.d1(subscribeSearchFragment.getActivity(), view);
            String strTrim = subscribeSearchFragment.vTopicText.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Feed(jo.n(strTrim, " - Google News"), jo.o("http://news.google.com/news?pz=1&ned=us&hl=en&q=", strTrim, "&output=atom"), "drawable://2131230982"));
            String strN = jo.n(strTrim, " - Amazon Tag");
            StringBuilder sbZ = jo.z("http://www.amazon.com/rss/tag/");
            sbZ.append(n56.u0(strTrim).replace("+", "%20"));
            sbZ.append("/new?length=100");
            arrayList.add(new Feed(strN, sbZ.toString(), "drawable://2131230928"));
            arrayList.add(new Feed(jo.n(strTrim, " - Reddit"), jo.o("http://www.reddit.com/r/", strTrim, "/.xml"), "drawable://2131231086"));
            subscribeSearchFragment.f.c(arrayList);
        }
    }

    public class d extends DebouncingOnClickListener {
        public final /* synthetic */ SubscribeSearchFragment e;

        public d(SubscribeSearchFragment_ViewBinding subscribeSearchFragment_ViewBinding, SubscribeSearchFragment subscribeSearchFragment) {
            this.e = subscribeSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SubscribeSearchFragment subscribeSearchFragment = this.e;
            Objects.requireNonNull(subscribeSearchFragment);
            subscribeSearchFragment.startActivity(new Intent(subscribeSearchFragment.getActivity(), (Class<?>) ImportOpmlActivity.class));
        }
    }

    public SubscribeSearchFragment_ViewBinding(SubscribeSearchFragment subscribeSearchFragment, View view) {
        this.a = subscribeSearchFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.v_list_view, "field 'vListView' and method 'onListItemClick'");
        subscribeSearchFragment.vListView = (ListView) Utils.castView(viewFindRequiredView, R.id.v_list_view, "field 'vListView'", ListView.class);
        this.b = viewFindRequiredView;
        ((AdapterView) viewFindRequiredView).setOnItemClickListener(new a(this, subscribeSearchFragment));
        subscribeSearchFragment.vEmpty = Utils.findRequiredView(view, R.id.v_empty, "field 'vEmpty'");
        subscribeSearchFragment.vQueryText = (AutoCompleteTextView) Utils.findRequiredViewAsType(view, R.id.query, "field 'vQueryText'", AutoCompleteTextView.class);
        subscribeSearchFragment.vTopicText = (EditText) Utils.findRequiredViewAsType(view, R.id.topic_text, "field 'vTopicText'", EditText.class);
        subscribeSearchFragment.vOmplContainer = Utils.findRequiredView(view, R.id.opml_container, "field 'vOmplContainer'");
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.search_button, "method 'searchFeeds'");
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, subscribeSearchFragment));
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.topic_button, "method 'getTopics'");
        this.d = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new c(this, subscribeSearchFragment));
        View viewFindRequiredView4 = Utils.findRequiredView(view, R.id.import_opml_button, "method 'importOmpl'");
        this.e = viewFindRequiredView4;
        viewFindRequiredView4.setOnClickListener(new d(this, subscribeSearchFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscribeSearchFragment subscribeSearchFragment = this.a;
        if (subscribeSearchFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscribeSearchFragment.vListView = null;
        subscribeSearchFragment.vEmpty = null;
        subscribeSearchFragment.vQueryText = null;
        subscribeSearchFragment.vTopicText = null;
        ((AdapterView) this.b).setOnItemClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
        this.e.setOnClickListener(null);
        this.e = null;
    }
}
