package defpackage;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.service.DownloadService;
import defpackage.mp6;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class rp6 extends pc {
    public c p;
    public NotificationManager q;
    public ProgressBar u;
    public TextView v;
    public List<d> o = new ArrayList();
    public boolean r = true;
    public mp6 s = null;
    public ServiceConnection t = new a();
    public boolean w = false;
    public Handler x = new b();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            mp6 c0023a;
            rp6 rp6Var = rp6.this;
            int i = mp6.a.e;
            if (iBinder == null) {
                c0023a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.noinnion.android.greader.service.IDownloadService");
                c0023a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof mp6)) ? new mp6.a.C0023a(iBinder) : (mp6) iInterfaceQueryLocalInterface;
            }
            rp6Var.s = c0023a;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            rp6.this.s = null;
        }
    }

    public class b extends Handler {
        public b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                rp6 rp6Var = rp6.this;
                if (rp6Var.r) {
                    try {
                        mp6 mp6Var = rp6Var.s;
                        if (mp6Var != null) {
                            int iM3 = mp6Var.m3();
                            if (iM3 == 0) {
                                rp6.this.o.clear();
                                rp6.this.u.setVisibility(8);
                                rp6 rp6Var2 = rp6.this;
                                rp6Var2.v.setText(rp6Var2.getText(R.string.msg_no_downloading_items));
                                rp6.this.p.notifyDataSetChanged();
                                return;
                            }
                            if (rp6.this.o.size() != iM3) {
                                rp6.this.o.clear();
                                Iterator<String> it = rp6.this.s.j6().iterator();
                                while (it.hasNext()) {
                                    rp6.this.o.add(new d(Integer.valueOf(it.next()).intValue()));
                                }
                            }
                        }
                        int i2 = 0;
                        for (d dVar : rp6.this.o) {
                            int i3 = dVar.a;
                            if (!dVar.k) {
                                rp6.this.o.get(i2).c = rp6.this.s.x5(i3);
                                rp6.this.o.get(i2).d = rp6.this.s.A2(i3);
                                rp6.this.o.get(i2).e = rp6.this.s.t3(i3);
                                d dVar2 = rp6.this.o.get(i2);
                                rp6.this.s.R2(i3);
                                Objects.requireNonNull(dVar2);
                                rp6.this.o.get(i2).b = rp6.this.s.S5(i3);
                            }
                            int iV0 = rp6.this.s.v0(i3);
                            rp6.this.o.get(i2).g = iV0;
                            if (iV0 == -1) {
                                rp6.this.s.L0(i3);
                            }
                            if (iV0 != 1 && iV0 != 3) {
                                if (iV0 != 2) {
                                    rp6.this.o.get(i2).f = rp6.this.s.L2(i3);
                                    rp6.this.o.get(i2).h = rp6.this.s.A1(i3);
                                    rp6.this.o.get(i2).i = rp6.this.s.W5(i3);
                                    rp6.this.o.get(i2).j = rp6.this.s.D3(i3);
                                } else {
                                    dVar.f = 100;
                                }
                            }
                            dVar.k = true;
                            i2++;
                        }
                        rp6.this.p.notifyDataSetChanged();
                        if (rp6.this.w) {
                            return;
                        }
                        sendMessageDelayed(obtainMessage(1), 2000L);
                        return;
                    } catch (RemoteException e) {
                        e.printStackTrace();
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
            }
            if (i == 2) {
                rp6.this.w = true;
            }
        }
    }

    public class c extends ArrayAdapter<d> {
        public List<d> e;
        public LayoutInflater f;
        public int g;

        public class a {
            public ImageView a;
            public TextView b;
            public TextView c;
            public ProgressBar d;
            public TextView e;
            public int f;

            public a(c cVar) {
            }
        }

        public c(rp6 rp6Var, Context context, int i, List<d> list) {
            super(context, i, list);
            this.e = list;
            this.f = LayoutInflater.from(context);
            this.g = i;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = this.f.inflate(this.g, (ViewGroup) null);
                aVar = new a(this);
                aVar.a = (ImageView) view.findViewById(R.id.leftIcon);
                aVar.b = (TextView) view.findViewById(R.id.firstLineTextView);
                aVar.c = (TextView) view.findViewById(R.id.statusText);
                aVar.d = (ProgressBar) view.findViewById(R.id.progress_horizontal);
                aVar.e = (TextView) view.findViewById(R.id.secondLineTextView);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            d dVar = this.e.get(i);
            if (dVar != null) {
                aVar.f = dVar.a;
                aVar.c.setVisibility(4);
                int i2 = dVar.g;
                if (i2 != 0) {
                    aVar.c.setText(dw6.p[i2]);
                    aVar.c.setVisibility(0);
                } else {
                    aVar.c.setVisibility(8);
                }
                String str = dVar.d;
                if (str != null) {
                    aVar.b.setText(str);
                }
                aVar.d.setProgress(dVar.f);
                aVar.d.setVisibility(0);
                if (i2 == 0) {
                    TextView textView = aVar.e;
                    StringBuilder sbZ = jo.z("T : ");
                    sbZ.append(dVar.h);
                    sbZ.append("    R : ");
                    sbZ.append(dVar.i);
                    sbZ.append("    S : ");
                    sbZ.append(new DecimalFormat("0.00").format(dVar.j));
                    sbZ.append(" Kb/s");
                    textView.setText(sbZ.toString());
                } else {
                    aVar.e.setText(dVar.b);
                }
                String str2 = dVar.e;
                if (str2 == null) {
                    aVar.a.setImageResource(R.drawable.icon);
                } else if (str2.contains("audio")) {
                    aVar.a.setImageResource(R.drawable.enclosure_audio);
                } else if (dVar.e.contains(NSRSS20.IMAGE)) {
                    aVar.a.setImageResource(R.drawable.enclosure_picture);
                } else if (dVar.e.contains("video")) {
                    aVar.a.setImageResource(R.drawable.enclosure_video);
                } else {
                    aVar.a.setImageResource(R.drawable.icon);
                }
            }
            view.setTag(aVar);
            return view;
        }
    }

    public static class d {
        public int a;
        public String b;
        public String c;
        public String d;
        public String e;
        public int f;
        public int g;
        public String h;
        public String i;
        public float j;
        public boolean k = false;

        public d(int i) {
            this.a = i;
        }
    }

    @Override // defpackage.pc
    public void e(ListView listView, View view, int i, long j) {
        d dVar = this.o.get(i);
        if (dVar.g == 2) {
            File file = new File(dVar.c);
            if (file.exists()) {
                n56.A1(getActivity(), file);
            } else {
                n56.X1(getActivity(), getText(R.string.download_not_found));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        d();
        registerForContextMenu(this.i);
        this.p = new c(this, getActivity(), R.layout.download_list_row, this.o);
        d();
        ListView listView = this.i;
        listView.setAdapter((ListAdapter) this.p);
        listView.setSmoothScrollbarEnabled(true);
        getActivity().bindService(new Intent(getActivity(), (Class<?>) DownloadService.class), this.t, 1);
        this.q = (NotificationManager) getActivity().getSystemService("notification");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getGroupId() != 1) {
            return false;
        }
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        int i = ((c.a) adapterContextMenuInfo.targetView.getTag()).f;
        switch (menuItem.getItemId()) {
            case 1:
                try {
                    d dVar = this.o.get(adapterContextMenuInfo.position);
                    if (dVar.g == 2) {
                        File file = new File(dVar.c);
                        if (file.exists()) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setDataAndType(Uri.fromFile(file), dVar.e);
                            startActivity(intent);
                        } else {
                            n56.X1(getActivity(), getText(R.string.download_not_found));
                        }
                    }
                } catch (Exception e) {
                    n56.X1(getActivity(), e.getLocalizedMessage());
                }
                return true;
            case 2:
                try {
                    this.s.X3(i);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                return true;
            case 3:
                try {
                    this.s.A4(i);
                } catch (RemoteException e3) {
                    e3.printStackTrace();
                }
                return true;
            case 4:
                try {
                    this.s.remove(i);
                } catch (RemoteException e4) {
                    e4.printStackTrace();
                }
                return true;
            case 5:
                try {
                    d dVar2 = this.o.get(adapterContextMenuInfo.position);
                    if (dVar2.g == 2) {
                        File file2 = new File(dVar2.c);
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                    this.s.remove(i);
                } catch (Exception e5) {
                    n56.X1(getActivity(), e5.getLocalizedMessage());
                }
                return true;
            case 6:
                try {
                    this.s.D0();
                    this.o.clear();
                    this.p.notifyDataSetChanged();
                    this.q.cancel(R.id.notification_download_media);
                } catch (RemoteException e6) {
                    e6.printStackTrace();
                }
                return true;
            default:
                return super.onContextItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        int i = this.o.get(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position).g;
        if (i == 2) {
            contextMenu.add(1, 1, 0, getText(R.string.txt_open));
            contextMenu.add(1, 4, 0, getText(R.string.download_remove));
            contextMenu.add(1, 5, 0, getText(R.string.txt_delete));
        } else if (i == 0) {
            contextMenu.add(1, 3, 0, getText(android.R.string.cancel));
        } else if (i == 1 || i == 4 || i == 3) {
            contextMenu.add(1, 2, 0, getText(R.string.download_resume));
            contextMenu.add(1, 4, 0, getText(R.string.download_remove));
        }
        contextMenu.add(0, 6, 0, getText(R.string.download_clear));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.download_list, viewGroup, false);
        this.u = (ProgressBar) viewInflate.findViewById(R.id.loading);
        this.v = (TextView) viewInflate.findViewById(R.id.empty_message);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getActivity().unbindService(this.t);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.r = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.r = true;
        Handler handler = this.x;
        handler.sendMessage(handler.obtainMessage(1));
    }
}
