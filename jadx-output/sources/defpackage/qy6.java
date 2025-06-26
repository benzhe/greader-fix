package defpackage;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.noinnion.android.R$id;
import com.noinnion.android.R$layout;
import com.noinnion.android.R$string;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class qy6 extends o65 implements AdapterView.OnItemClickListener {
    public final d q;
    public final String r;
    public final String s;
    public CheckBox t;
    public GridView u;
    public c v;
    public List<ResolveInfo> w;

    public class b extends AsyncTask<Void, Void, Void> {
        public b(a aVar) {
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            PackageManager packageManager = qy6.this.getContext().getPackageManager();
            qy6.this.w = packageManager.queryIntentActivities(intent, 0);
            Collections.sort(qy6.this.w, new ResolveInfo.DisplayNameComparator(packageManager));
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r6) {
            qy6 qy6Var = qy6.this;
            qy6 qy6Var2 = qy6.this;
            qy6Var.v = qy6Var2.new c(qy6Var2.getContext(), R$layout.dialog_intent_chooser_row, qy6.this.w);
            qy6 qy6Var3 = qy6.this;
            qy6Var3.u.setAdapter((ListAdapter) qy6Var3.v);
        }
    }

    public class c extends ArrayAdapter<ResolveInfo> {
        public final Context e;
        public final PackageManager f;

        public c(Context context, int i, List<ResolveInfo> list) {
            super(context, i, list);
            this.e = context;
            this.f = context.getPackageManager();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.e.getSystemService("layout_inflater")).inflate(R$layout.dialog_intent_chooser_row, (ViewGroup) null);
            }
            ResolveInfo resolveInfo = qy6.this.w.get(i);
            if (resolveInfo != null) {
                ((TextView) view.findViewById(R$id.name)).setText(resolveInfo.loadLabel(this.f));
                ((ImageView) view.findViewById(R$id.icon)).setImageDrawable(resolveInfo.loadIcon(this.f));
            }
            return view;
        }
    }

    public interface d {
    }

    public qy6(Context context, String str, String str2, d dVar) {
        super(context, 0);
        this.w = new ArrayList();
        this.r = str;
        this.s = str2;
        this.q = dVar;
    }

    @Override // defpackage.o65, defpackage.i0, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getContext().getText(R$string.txt_send_to));
        setContentView(R$layout.dialog_intent_chooser);
        this.t = (CheckBox) findViewById(R$id.default_check);
        GridView gridView = (GridView) findViewById(R.id.list);
        this.u = gridView;
        gridView.setOnItemClickListener(this);
        this.u.setEmptyView(findViewById(R.id.empty));
        new b(null).execute(new Void[0]);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        ResolveInfo resolveInfo = this.w.get(i);
        if (resolveInfo != null) {
            String str = resolveInfo.activityInfo.name;
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", this.r);
            intent.putExtra("android.intent.extra.TEXT", this.s);
            intent.setPackage(resolveInfo.activityInfo.packageName);
            getContext().startActivity(Intent.createChooser(intent, getContext().getText(R$string.txt_send_to)));
            d dVar = this.q;
            Context context = getContext();
            boolean zIsChecked = this.t.isChecked();
            Objects.requireNonNull((hn6) dVar);
            if (zIsChecked) {
                iw6.V(context, "item_share_default", str);
            } else {
                iw6.V(context, "item_share_default", null);
            }
        }
        dismiss();
    }
}
