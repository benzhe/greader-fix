package com.noinnion.android.greader.ui.subscription;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import com.noinnion.android.reader.widget.SlidingTabLayout;
import defpackage.cc;
import defpackage.n56;
import defpackage.wb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class SubscribeActivity extends BaseDialogActivity {
    public static final /* synthetic */ int D = 0;
    public SlidingTabLayout A;
    public List<c> B;
    public d C;
    public String y;
    public ViewPager z;

    public class a extends ViewPager.m {
        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void c(int i) {
            SubscribeActivity subscribeActivity = SubscribeActivity.this;
            int i2 = SubscribeActivity.D;
            subscribeActivity.B(i);
        }
    }

    public class b implements SlidingTabLayout.d {
        public b(SubscribeActivity subscribeActivity) {
        }

        @Override // com.noinnion.android.reader.widget.SlidingTabLayout.d
        public int a(int i) {
            return -1;
        }
    }

    public class c {
        public String a;
        public String b;
        public Class<?> c;
        public Bundle d;

        public c(SubscribeActivity subscribeActivity, String str, String str2, Class<?> cls, Bundle bundle) {
            this.a = str;
            this.b = str2;
            this.c = cls;
            this.d = bundle;
        }
    }

    public class d extends cc {
        public d(wb wbVar) {
            super(wbVar);
        }

        @Override // defpackage.xi
        public int c() {
            return SubscribeActivity.this.B.size();
        }

        @Override // defpackage.xi
        public CharSequence d(int i) {
            return SubscribeActivity.this.B.get(i).b;
        }

        @Override // defpackage.cc
        public Fragment k(int i) {
            c cVar = SubscribeActivity.this.B.get(i);
            Class<?> cls = cVar.c;
            return Fragment.instantiate(SubscribeActivity.this.getApplicationContext(), cls.getName(), cVar.d);
        }
    }

    public final void B(int i) {
        if (i == 0) {
            n56.y2(this, R.string.ga_screen_subscribe_search);
            return;
        }
        if (i == 1) {
            n56.y2(this, R.string.ga_screen_subscribe_podcast);
        } else if (i == 2) {
            n56.y2(this, R.string.ga_screen_subscribe_browse);
        } else {
            if (i != 3) {
                return;
            }
            n56.y2(this, R.string.ga_screen_subscribe_news);
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        z(bundle, BaseDialogActivity.a.WHEN_LARGE);
        setContentView(R.layout.subscribe);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            t().t(R.string.sub_add_subscription);
            t().o(true);
        }
        Intent intent = getIntent();
        if ("android.intent.action.SEND".equals(intent.getAction())) {
            this.y = intent.getStringExtra("android.intent.extra.TEXT");
        }
        ViewPager viewPager = (ViewPager) findViewById(R.id.pager);
        this.z = viewPager;
        viewPager.setOffscreenPageLimit(3);
        this.B = new ArrayList();
        Bundle bundle2 = new Bundle();
        bundle2.putString("input", this.y);
        this.B.add(new c(this, "search", getString(R.string.txt_search), SubscribeSearchFragment.class, bundle2));
        this.B.add(new c(this, "podcast", getString(R.string.label_podcast), SubscribePodcastFragment.class, null));
        Bundle bundle3 = new Bundle();
        bundle3.putInt("browse_type", 1);
        this.B.add(new c(this, "browse", getString(R.string.subscribe_browse), SubscribeBrowseFragment.class, bundle3));
        Bundle bundle4 = new Bundle();
        bundle4.putInt("browse_type", 2);
        this.B.add(new c(this, "news", getString(R.string.subscribe_news), SubscribeBrowseFragment.class, bundle4));
        d dVar = new d(o());
        this.C = dVar;
        this.z.setAdapter(dVar);
        this.z.b(new a());
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) findViewById(R.id.sliding_tabs);
        this.A = slidingTabLayout;
        slidingTabLayout.setCustomTabView(R.layout.tab_indicator, android.R.id.text1);
        int i = 0;
        this.A.setSelectedIndicatorColors(getResources().getColor(R.color.primary_default));
        this.A.setDistributeEvenly(true);
        this.A.setViewPager(this.z);
        this.A.setCustomTabColorizer(new b(this));
        if (bundle != null) {
            String string = bundle.getString("tab");
            ViewPager viewPager2 = this.z;
            Iterator<c> it = SubscribeActivity.this.B.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (it.next().a.equals(string)) {
                    break;
                } else {
                    i++;
                }
            }
            viewPager2.setCurrentItem(i);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        B(0);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("tab", this.B.get(this.z.getCurrentItem()).a);
    }
}
