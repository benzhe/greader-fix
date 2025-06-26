package com.noinnion.android.greader.ui.download;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.service.FeedService;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.n56;
import defpackage.np6;

/* loaded from: classes2.dex */
public class DownloadFeedActivity extends BaseDialogActivity implements View.OnClickListener {
    public ProgressBar D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public Button z;
    public np6 y = null;
    public boolean A = false;
    public Handler B = new a();
    public ServiceConnection C = new b();

    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == -559038737) {
                try {
                    np6 np6Var = DownloadFeedActivity.this.y;
                    if (np6Var != null) {
                        if (np6Var.c5() == -1) {
                            DownloadFeedActivity downloadFeedActivity = DownloadFeedActivity.this;
                            downloadFeedActivity.E.setText(downloadFeedActivity.getText(R.string.download_canceled));
                            DownloadFeedActivity.this.A = true;
                        } else {
                            int iP0 = DownloadFeedActivity.this.y.p0();
                            DownloadFeedActivity.this.E.setText(iP0 + "/" + DownloadFeedActivity.this.y.c5());
                            DownloadFeedActivity downloadFeedActivity2 = DownloadFeedActivity.this;
                            downloadFeedActivity2.D.setProgress(downloadFeedActivity2.y.T0());
                            DownloadFeedActivity downloadFeedActivity3 = DownloadFeedActivity.this;
                            downloadFeedActivity3.F.setText(downloadFeedActivity3.y.y1());
                            DownloadFeedActivity downloadFeedActivity4 = DownloadFeedActivity.this;
                            downloadFeedActivity4.G.setText(downloadFeedActivity4.y.n0());
                            DownloadFeedActivity downloadFeedActivity5 = DownloadFeedActivity.this;
                            downloadFeedActivity5.H.setText(downloadFeedActivity5.y.f6());
                        }
                    }
                    if (DownloadFeedActivity.this.A) {
                        return;
                    }
                    sendMessageDelayed(obtainMessage(-559038737), 2000L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public class b implements ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            np6 c0026a;
            DownloadFeedActivity downloadFeedActivity = DownloadFeedActivity.this;
            int i = np6.a.e;
            if (iBinder == null) {
                c0026a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.noinnion.android.greader.service.IFeedService");
                c0026a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof np6)) ? new np6.a.C0026a(iBinder) : (np6) iInterfaceQueryLocalInterface;
            }
            downloadFeedActivity.y = c0026a;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            DownloadFeedActivity.this.y = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.close) {
            finish();
            return;
        }
        if (id != R.id.stop) {
            return;
        }
        try {
            this.y.cancel();
            this.E.setText(getText(R.string.download_canceled));
            this.z.setEnabled(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        finish();
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        setTitle(R.string.download_articles);
        setContentView(R.layout.download_feed);
        bindService(new Intent(this, (Class<?>) FeedService.class), this.C, 1);
        this.D = (ProgressBar) findViewById(R.id.progress);
        this.E = (TextView) findViewById(R.id.info_text);
        this.F = (TextView) findViewById(R.id.downloading_1);
        this.G = (TextView) findViewById(R.id.downloading_2);
        this.H = (TextView) findViewById(R.id.downloading_3);
        Button button = (Button) findViewById(R.id.stop);
        this.z = button;
        button.setOnClickListener(this);
        findViewById(R.id.close).setOnClickListener(this);
        n56.y2(this, R.string.ga_screen_download_feed);
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unbindService(this.C);
        this.A = true;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Handler handler = this.B;
        handler.sendMessage(handler.obtainMessage(-559038737));
    }
}
