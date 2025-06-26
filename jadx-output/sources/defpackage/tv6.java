package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.ResourceCursorTreeAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import defpackage.kp6;
import defpackage.sd;

/* loaded from: classes2.dex */
public class tv6 extends rb implements sd.a<Cursor>, AdapterView.OnItemClickListener, ExpandableListView.OnGroupClickListener, ExpandableListView.OnChildClickListener {
    public b e;
    public ExpandableListView f;
    public c g;
    public int h;
    public String i;
    public ImageView j;
    public ImageView k;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            tv6.this.dismissAllowingStateLoss();
        }
    }

    public interface b {
    }

    public class c extends ResourceCursorTreeAdapter {

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int iIntValue = ((Integer) view.getTag()).intValue();
                if (tv6.this.f.isGroupExpanded(iIntValue)) {
                    tv6.this.f.collapseGroup(iIntValue);
                } else {
                    tv6.this.f.expandGroup(iIntValue);
                }
            }
        }

        public c(Context context, Cursor cursor, a aVar) {
            super(context, null, R.layout.widget_manage_list_row, R.layout.widget_manage_list_row);
        }

        @Override // android.widget.CursorTreeAdapter
        public void bindChildView(View view, Context context, Cursor cursor, boolean z) throws Resources.NotFoundException {
            ip6 ip6Var = new ip6(cursor);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            if (ip6Var.j != null) {
                hz6 hz6VarJ = hz6.j();
                StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
                sbZ.append(ip6Var.j);
                hz6VarJ.f(sbZ.toString(), imageView);
            } else {
                imageView.setImageResource(R.drawable.ic_feed);
            }
            ((TextView) view.findViewById(R.id.label)).setText(ip6Var.h);
            view.setPadding(30, 5, 10, 5);
            view.setTag(ip6Var.f);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.selected);
            imageView2.setVisibility(8);
            String str = tv6.this.i;
            if (str == null || !str.equals(ip6Var.f)) {
                return;
            }
            imageView2.setVisibility(0);
        }

        @Override // android.widget.CursorTreeAdapter
        public void bindGroupView(View view, Context context, Cursor cursor, boolean z) throws Resources.NotFoundException {
            kp6.a aVar = new kp6.a(cursor);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            imageView.setOnClickListener(null);
            hz6 hz6VarJ = hz6.j();
            hz6VarJ.a(imageView);
            if (aVar.c < 100) {
                ((TextView) view.findViewById(R.id.label)).setText(aVar.c(context).toUpperCase());
                int i = aVar.c;
                if (i != 1) {
                    switch (i) {
                        case 9:
                            imageView.setImageResource(R.drawable.ic_tag_search);
                            break;
                        case 10:
                            imageView.setImageResource(R.drawable.ic_tag_label);
                            break;
                        case 11:
                            imageView.setImageResource(z ? R.drawable.ic_arrow_down_default : R.drawable.ic_arrow_right_default);
                            imageView.setTag(Integer.valueOf(cursor.getPosition()));
                            imageView.setOnClickListener(new a());
                            break;
                    }
                } else {
                    imageView.setImageResource(R.drawable.ic_tag_star);
                }
            } else {
                if (aVar.e != null) {
                    StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
                    sbZ.append(aVar.e);
                    hz6VarJ.f(sbZ.toString(), imageView);
                } else {
                    imageView.setImageResource(R.drawable.ic_feed);
                }
                ((TextView) view.findViewById(R.id.label)).setText(aVar.d);
            }
            view.setTag(aVar.b);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.selected);
            imageView2.setVisibility(8);
            String str = tv6.this.i;
            if (str == null || !str.equals(aVar.b)) {
                return;
            }
            imageView2.setVisibility(0);
        }

        @Override // android.widget.CursorTreeAdapter
        public Cursor getChildrenCursor(Cursor cursor) {
            if (tv6.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = tv6.this.getActivity().getApplicationContext();
            kp6.a aVar = new kp6.a(cursor);
            if (aVar.c == 11) {
                return ep6.x(applicationContext, aVar.b, false, true).k();
            }
            return null;
        }
    }

    public tv6(int i, String str, b bVar) {
        this.h = 0;
        this.i = null;
        this.h = i;
        this.i = str;
        this.e = bVar;
    }

    public void d(String str) {
        if (getActivity() == null) {
            return;
        }
        Context applicationContext = getActivity().getApplicationContext();
        String string = (String) applicationContext.getText(R.string.app_name);
        if (str == null || str.length() <= 0) {
            this.i = null;
        } else if (str.startsWith("user/") || str.contains("@")) {
            lp6 lp6VarA = lp6.a(applicationContext, "uid", str, false);
            if (lp6VarA != null) {
                string = lp6VarA.h(applicationContext).toString();
                this.i = lp6VarA.f;
            }
        } else if (str.startsWith(RssReaderClient.USER_FEED)) {
            ip6 ip6VarB = ip6.b(applicationContext, "uid", str, false);
            if (ip6VarB != null) {
                String str2 = ip6VarB.h;
                this.i = ip6VarB.f;
                string = str2;
            }
        } else if (str.equals("all")) {
            string = (String) applicationContext.getText(R.string.label_all);
            this.i = "all";
        }
        b bVar = this.e;
        String str3 = this.i;
        rv6 rv6Var = (rv6) bVar;
        sv6 sv6Var = rv6Var.a;
        sv6Var.o = str3;
        sv6Var.p = string;
        if (sv6Var.m == 1) {
            sv6Var.t.setText(string);
        }
        rv6Var.a.j();
        dismiss();
    }

    @Override // sd.a
    public void f(wd<Cursor> wdVar, Cursor cursor) {
        Cursor cursor2 = cursor;
        if (cursor2 == null) {
            return;
        }
        this.g.changeCursor(cursor2);
        String str = this.i;
        if (str == null) {
            ImageView imageView = this.j;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            ImageView imageView2 = this.k;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
                return;
            }
            return;
        }
        if (str.equals("all")) {
            ImageView imageView3 = this.j;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
            ImageView imageView4 = this.k;
            if (imageView4 != null) {
                imageView4.setVisibility(0);
                return;
            }
            return;
        }
        ImageView imageView5 = this.j;
        if (imageView5 != null) {
            imageView5.setVisibility(8);
        }
        ImageView imageView6 = this.k;
        if (imageView6 != null) {
            imageView6.setVisibility(8);
        }
    }

    @Override // sd.a
    public wd<Cursor> g(int i, Bundle bundle) {
        if (getActivity() == null) {
            return null;
        }
        return ep6.y(getActivity().getApplicationContext(), false, false, true, true);
    }

    @Override // sd.a
    public void k(wd<Cursor> wdVar) {
        this.g.changeCursor(null);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.h != 1 && this.i == null) {
            this.i = "all";
        }
        if (getActivity() != null) {
            LayoutInflater layoutInflater = (LayoutInflater) getActivity().getSystemService("layout_inflater");
            if (this.h == 1) {
                View viewInflate = layoutInflater.inflate(R.layout.widget_manage_list_row, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.label)).setText(R.string.app_name);
                ((ImageView) viewInflate.findViewById(R.id.icon)).setImageResource(R.drawable.icon);
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.selected);
                this.j = imageView;
                imageView.setVisibility(8);
                if (this.i == null) {
                    this.j.setVisibility(0);
                }
                viewInflate.setTag(null);
                this.f.addHeaderView(viewInflate);
            }
            View viewInflate2 = layoutInflater.inflate(R.layout.widget_manage_list_row, (ViewGroup) null);
            ((TextView) viewInflate2.findViewById(R.id.label)).setText(getString(R.string.label_all).toUpperCase());
            ((ImageView) viewInflate2.findViewById(R.id.icon)).setImageResource(R.drawable.ic_tag_all);
            ImageView imageView2 = (ImageView) viewInflate2.findViewById(R.id.selected);
            this.k = imageView2;
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            viewInflate2.setTag("all");
            this.f.addHeaderView(viewInflate2);
        }
        c cVar = new c(getActivity(), null, null);
        this.g = cVar;
        this.f.setAdapter(cVar);
        if (getActivity() == null) {
            return;
        }
        getLoaderManager().c(2, null, this);
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        Object tag = view.getTag();
        d((tag == null || !(tag instanceof String)) ? null : String.valueOf(tag));
        return true;
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.widget_manage_source_dialog, viewGroup);
        getDialog().getWindow().requestFeature(1);
        Toolbar toolbar = (Toolbar) viewInflate.findViewById(R.id.toolbar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.widget_select_source);
            toolbar.setNavigationIcon(R.drawable.abc_ic_ab_back_mtrl_am_alpha);
            toolbar.setNavigationOnClickListener(new a());
        }
        ExpandableListView expandableListView = (ExpandableListView) viewInflate.findViewById(android.R.id.list);
        this.f = expandableListView;
        expandableListView.setGroupIndicator(null);
        this.f.setOnItemClickListener(this);
        this.f.setOnGroupClickListener(this);
        this.f.setOnChildClickListener(this);
        return viewInflate;
    }

    @Override // android.widget.ExpandableListView.OnGroupClickListener
    public boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long j) {
        Object tag = view.getTag();
        d((tag == null || !(tag instanceof String)) ? null : String.valueOf(tag));
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object tag = view.getTag();
        if (tag == null) {
            d(null);
        } else if (tag instanceof String) {
            d((String) tag);
        }
    }
}
