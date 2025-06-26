package com.noinnion.android.greader.ui.locale;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.ResourceCursorTreeAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.ep6;
import defpackage.ip6;
import defpackage.jo;
import defpackage.kp6;
import defpackage.lp6;
import defpackage.qr6;
import defpackage.sd;
import defpackage.sx6;
import defpackage.wd;

/* loaded from: classes2.dex */
public final class LocaleEditActivity extends BaseDialogActivity implements sd.a<Cursor>, View.OnClickListener, AdapterView.OnItemClickListener, ExpandableListView.OnGroupClickListener, ExpandableListView.OnChildClickListener {
    public b A;
    public Spinner B;
    public Spinner E;
    public Spinner F;
    public Spinner G;
    public Spinner H;
    public ImageView I;
    public ExpandableListView z;
    public boolean y = false;
    public String C = null;
    public a D = new a(this);

    public class a {
        public int a = -1;
        public int b = -1;
        public int c = -1;
        public int d = -1;

        public a(LocaleEditActivity localeEditActivity) {
        }
    }

    public class b extends ResourceCursorTreeAdapter {

        public class a implements View.OnClickListener {
            public a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int iIntValue = ((Integer) view.getTag()).intValue();
                if (LocaleEditActivity.this.z.isGroupExpanded(iIntValue)) {
                    LocaleEditActivity.this.z.collapseGroup(iIntValue);
                } else {
                    LocaleEditActivity.this.z.expandGroup(iIntValue);
                }
            }
        }

        public b(Context context, Cursor cursor, qr6 qr6Var) {
            super(context, null, R.layout.widget_manage_list_row, R.layout.widget_manage_list_row);
        }

        @Override // android.widget.CursorTreeAdapter
        public void bindChildView(View view, Context context, Cursor cursor, boolean z) throws Resources.NotFoundException {
            ip6 ip6Var = new ip6(cursor);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            sx6.n().a(imageView);
            String strA = ip6Var.a();
            if (TextUtils.isEmpty(strA)) {
                imageView.setImageResource(R.drawable.ic_feed);
            } else {
                sx6.n().f(strA, imageView);
            }
            ((TextView) view.findViewById(R.id.label)).setText(ip6Var.h);
            view.setPadding(30, 5, 10, 5);
            view.setTag(ip6Var.f);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.selected);
            imageView2.setVisibility(8);
            String str = LocaleEditActivity.this.C;
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
            sx6.n().a(imageView);
            if (aVar.c < 100) {
                ((TextView) view.findViewById(R.id.label)).setText(aVar.c(context).toUpperCase());
                int i = aVar.c;
                if (i == 1) {
                    imageView.setImageResource(R.drawable.ic_tag_star);
                } else if (i == 10) {
                    imageView.setImageResource(R.drawable.ic_tag_label);
                } else if (i == 11) {
                    imageView.setImageResource(z ? R.drawable.ic_arrow_down_default : R.drawable.ic_arrow_right_default);
                    imageView.setTag(Integer.valueOf(cursor.getPosition()));
                    imageView.setOnClickListener(new a());
                }
            } else {
                String strA = aVar.a();
                if (TextUtils.isEmpty(strA)) {
                    imageView.setImageResource(R.drawable.ic_feed);
                } else {
                    sx6.n().f(strA, imageView);
                }
                ((TextView) view.findViewById(R.id.label)).setText(aVar.d);
            }
            view.setTag(aVar.b);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.selected);
            imageView2.setVisibility(8);
            String str = LocaleEditActivity.this.C;
            if (str == null || !str.equals(aVar.b)) {
                return;
            }
            imageView2.setVisibility(0);
        }

        @Override // android.widget.CursorTreeAdapter
        public Cursor getChildrenCursor(Cursor cursor) {
            kp6.a aVar = new kp6.a(cursor);
            if (aVar.c != 11) {
                return null;
            }
            return ep6.x(LocaleEditActivity.this, aVar.b, false, true).k();
        }
    }

    public final void B() {
        if (this.B.getSelectedItemPosition() == 4) {
            int i = this.D.a;
            this.E.setSelection(i == -1 ? 0 : i + 1);
            int i2 = this.D.b;
            this.F.setSelection(i2 == -1 ? 0 : i2 + 1);
            int i3 = this.D.c;
            this.G.setSelection(i3 == -1 ? 0 : i3 + 1);
            int i4 = this.D.d;
            this.H.setSelection(i4 != -1 ? i4 + 1 : 0);
        }
        sd.b(this).c(2, null, this);
    }

    public void C(String str) {
        ip6 ip6VarB;
        this.C = null;
        if (str != null && str.length() > 0) {
            if (str.startsWith("user/")) {
                lp6 lp6VarA = lp6.a(this, "uid", str, false);
                if (lp6VarA != null) {
                    this.C = lp6VarA.f;
                }
            } else if (str.startsWith(RssReaderClient.USER_FEED) && (ip6VarB = ip6.b(this, "uid", str, false)) != null) {
                this.C = ip6VarB.f;
            }
        }
        B();
    }

    @Override // sd.a
    public void f(wd<Cursor> wdVar, Cursor cursor) {
        Cursor cursor2 = cursor;
        if (cursor2 == null) {
            return;
        }
        this.A.changeCursor(cursor2);
        if (this.C == null) {
            this.I.setVisibility(0);
        } else {
            this.I.setVisibility(8);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        CharSequence charSequence;
        if (this.y) {
            setResult(0);
        } else {
            int selectedItemPosition = this.B.getSelectedItemPosition();
            String string = "";
            String str = selectedItemPosition != 0 ? selectedItemPosition != 1 ? selectedItemPosition != 2 ? selectedItemPosition != 3 ? selectedItemPosition != 4 ? "" : "SETTINGS" : "READ ALOUD" : "OFFLINE UNREAD" : "SYNCHRONIZE OFFLINE" : "SYNCHRONIZE";
            if (selectedItemPosition == 4) {
                int selectedItemPosition2 = this.E.getSelectedItemPosition();
                if (selectedItemPosition2 > 0) {
                    StringBuilder sbB = jo.B("", "sync=");
                    sbB.append(selectedItemPosition2 - 1);
                    sbB.append(";");
                    string = sbB.toString();
                }
                int selectedItemPosition3 = this.F.getSelectedItemPosition();
                if (selectedItemPosition3 > 0) {
                    StringBuilder sbB2 = jo.B(string, "offline=");
                    sbB2.append(selectedItemPosition3 - 1);
                    sbB2.append(";");
                    string = sbB2.toString();
                }
                int selectedItemPosition4 = this.G.getSelectedItemPosition();
                if (selectedItemPosition4 > 0) {
                    StringBuilder sbB3 = jo.B(string, "notification=");
                    sbB3.append(selectedItemPosition4 - 1);
                    sbB3.append(";");
                    string = sbB3.toString();
                }
                int selectedItemPosition5 = this.H.getSelectedItemPosition();
                if (selectedItemPosition5 > 0) {
                    StringBuilder sbB4 = jo.B(string, "theme=");
                    sbB4.append(selectedItemPosition5 - 1);
                    sbB4.append(";");
                    string = sbB4.toString();
                }
                charSequence = string;
            } else {
                CharSequence text = getText(R.string.label_all);
                String str2 = this.C;
                if (str2 != null && str2.length() > 0) {
                    if (this.C.startsWith("user/")) {
                        lp6 lp6VarA = lp6.a(this, "uid", this.C, false);
                        if (lp6VarA != null) {
                            text = lp6VarA.h(this);
                        } else {
                            this.C = null;
                        }
                    } else if (this.C.startsWith(RssReaderClient.USER_FEED)) {
                        ip6 ip6VarB = ip6.b(this, "uid", this.C, false);
                        if (ip6VarB != null) {
                            text = ip6VarB.h;
                        } else {
                            this.C = null;
                        }
                    }
                }
                string = this.C;
                charSequence = text;
            }
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("com.noinnion.android.greader.reader.extra.TAG", string);
            bundle.putInt("com.noinnion.android.greader.reader.extra.ACTION", selectedItemPosition);
            intent.putExtra("com.twofortyfouram.locale.intent.extra.BUNDLE", bundle);
            String str3 = str + " | " + ((Object) charSequence);
            if (str3.length() > getResources().getInteger(R.integer.twofortyfouram_locale_maximum_blurb_length)) {
                intent.putExtra("com.twofortyfouram.locale.intent.extra.BLURB", str3.substring(0, getResources().getInteger(R.integer.twofortyfouram_locale_maximum_blurb_length)));
            } else {
                intent.putExtra("com.twofortyfouram.locale.intent.extra.BLURB", str3);
            }
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // sd.a
    public wd<Cursor> g(int i, Bundle bundle) {
        return ep6.y(getApplicationContext(), false, false, true, false);
    }

    @Override // sd.a
    public void k(wd<Cursor> wdVar) {
        this.A.changeCursor(null);
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        Object tag = view.getTag();
        C((tag == null || !(tag instanceof String)) ? null : String.valueOf(tag));
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.cancel_button) {
            this.y = true;
            finish();
        } else {
            if (id != R.id.ok_button) {
                return;
            }
            finish();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01a4  */
    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r18) {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noinnion.android.greader.ui.locale.LocaleEditActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.twofortyfouram_locale_help_save_dontsave, menu);
        getPackageManager();
        menu.findItem(R.id.twofortyfouram_locale_menu_help);
        menu.findItem(R.id.twofortyfouram_locale_menu_dontsave);
        menu.findItem(R.id.twofortyfouram_locale_menu_save);
        return true;
    }

    @Override // android.widget.ExpandableListView.OnGroupClickListener
    public boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long j) {
        Object tag = view.getTag();
        C((tag == null || !(tag instanceof String)) ? null : String.valueOf(tag));
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object tag = view.getTag();
        if (i == 0) {
            C("");
        } else if (tag instanceof String) {
            C((String) tag);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.twofortyfouram_locale_menu_dontsave /* 2131297083 */:
                this.y = true;
                finish();
                return true;
            case R.id.twofortyfouram_locale_menu_help /* 2131297084 */:
                try {
                    startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("http://www.greader.co/tasker")));
                } catch (Exception unused) {
                }
                return true;
            case R.id.twofortyfouram_locale_menu_save /* 2131297085 */:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        B();
        super.onResume();
    }
}
