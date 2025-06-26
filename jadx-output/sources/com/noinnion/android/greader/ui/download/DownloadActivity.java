package com.noinnion.android.greader.ui.download;

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
import defpackage.qp6;
import defpackage.rp6;
import defpackage.wb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class DownloadActivity extends BaseDialogActivity {
    public static final /* synthetic */ int C = 0;
    public List<c> A;
    public d B;
    public ViewPager y;
    public SlidingTabLayout z = null;

    public class a extends ViewPager.m {
        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void c(int i) {
            DownloadActivity downloadActivity = DownloadActivity.this;
            int i2 = DownloadActivity.C;
            Objects.requireNonNull(downloadActivity);
            if (i == 0) {
                n56.y2(downloadActivity, R.string.ga_screen_download_history);
            } else {
                if (i != 1) {
                    return;
                }
                n56.y2(downloadActivity, R.string.ga_screen_download_manager);
            }
        }
    }

    public class b implements SlidingTabLayout.d {
        public b(DownloadActivity downloadActivity) {
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
        public Bundle d = null;

        public c(DownloadActivity downloadActivity, String str, String str2, Class<?> cls, Bundle bundle) {
            this.a = str;
            this.b = str2;
            this.c = cls;
        }
    }

    public class d extends cc {
        public d(wb wbVar) {
            super(wbVar);
        }

        @Override // defpackage.xi
        public int c() {
            return DownloadActivity.this.A.size();
        }

        @Override // defpackage.xi
        public CharSequence d(int i) {
            return DownloadActivity.this.A.get(i).b;
        }

        @Override // defpackage.cc
        public Fragment k(int i) {
            c cVar = DownloadActivity.this.A.get(i);
            Class<?> cls = cVar.c;
            return Fragment.instantiate(DownloadActivity.this.getApplicationContext(), cls.getName(), cVar.d);
        }

        public int m(String str) {
            Iterator<c> it = DownloadActivity.this.A.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().a.equals(str)) {
                    return i;
                }
                i++;
            }
            return -1;
        }
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        z(bundle, BaseDialogActivity.a.WHEN_LARGE);
        setContentView(R.layout.downloads);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            t().t(R.string.menu_downloads);
            t().o(true);
        }
        ViewPager viewPager = (ViewPager) findViewById(R.id.pager);
        this.y = viewPager;
        viewPager.setOffscreenPageLimit(3);
        ArrayList arrayList = new ArrayList();
        this.A = arrayList;
        arrayList.add(new c(this, "history", getString(R.string.download_history), qp6.class, null));
        this.A.add(new c(this, "downloading", getString(R.string.download_downloading), rp6.class, null));
        d dVar = new d(o());
        this.B = dVar;
        this.y.setAdapter(dVar);
        this.y.b(new a());
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) findViewById(R.id.sliding_tabs);
        this.z = slidingTabLayout;
        slidingTabLayout.setCustomTabView(R.layout.tab_indicator, android.R.id.text1);
        this.z.setSelectedIndicatorColors(getResources().getColor(R.color.primary_default));
        this.z.setDistributeEvenly(true);
        this.z.setViewPager(this.y);
        this.z.setCustomTabColorizer(new b(this));
        if (bundle != null) {
            this.y.setCurrentItem(this.B.m(bundle.getString("tab")));
        } else {
            this.y.setCurrentItem(this.B.m(getIntent().getBooleanExtra("startDownloading", false) ? "downloading" : "history"));
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
        n56.y2(this, R.string.ga_screen_download_history);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("tab", this.A.get(this.y.getCurrentItem()).a);
    }
}
