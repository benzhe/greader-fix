package com.noinnion.android.greader.ui.media;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.BaseDialogActivity;
import defpackage.u7;
import defpackage.ur6;
import defpackage.wr6;

/* loaded from: classes2.dex */
public class MusicActivity extends BaseDialogActivity implements View.OnClickListener {
    public ImageView A;
    public Button B;
    public Button C;
    public SeekBar D = null;
    public boolean E = true;
    public ur6 F = null;
    public ServiceConnection G = new a();
    public boolean H = false;
    public int I = -1;
    public TextView J = null;
    public TextView K = null;
    public TextView L = null;
    public Handler M = new b();
    public ImageView y;
    public ImageView z;

    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ur6 c0053a;
            MusicActivity musicActivity = MusicActivity.this;
            int i = ur6.a.e;
            if (iBinder == null) {
                c0053a = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.noinnion.android.greader.ui.media.IMusicService");
                c0053a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ur6)) ? new ur6.a.C0053a(iBinder) : (ur6) iInterfaceQueryLocalInterface;
            }
            musicActivity.F = c0053a;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            MusicActivity.this.F = null;
        }
    }

    public class b extends Handler {
        public b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == -559038737) {
                MusicActivity musicActivity = MusicActivity.this;
                if (musicActivity.E) {
                    try {
                        ur6 ur6Var = musicActivity.F;
                        if (ur6Var != null) {
                            if (!musicActivity.H) {
                                int duration = ur6Var.getDuration();
                                MusicActivity musicActivity2 = MusicActivity.this;
                                musicActivity2.L.setText(musicActivity2.B(duration));
                                MusicActivity.this.D.setMax(duration);
                                MusicActivity musicActivity3 = MusicActivity.this;
                                musicActivity3.J.setText(musicActivity3.F.getTitle());
                                if (duration > 0) {
                                    MusicActivity.this.H = true;
                                }
                            }
                            int iD0 = MusicActivity.this.F.d0();
                            MusicActivity musicActivity4 = MusicActivity.this;
                            if (musicActivity4.I != iD0) {
                                musicActivity4.I = iD0;
                                musicActivity4.y.setImageResource(iD0 == 3 ? R.drawable.ic_media_pause : R.drawable.ic_media_play);
                            }
                            int currentPosition = MusicActivity.this.F.getCurrentPosition();
                            MusicActivity musicActivity5 = MusicActivity.this;
                            musicActivity5.K.setText(musicActivity5.B(currentPosition));
                            MusicActivity.this.D.setProgress(currentPosition);
                        }
                        sendMessageDelayed(obtainMessage(-559038737), 1000L);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public String B(int i) {
        int i2 = i / 1000;
        int i3 = i2 / 60;
        int i4 = i3 / 60;
        int i5 = i2 % 60;
        int i6 = i3 % 60;
        return i4 > 0 ? String.format("%02d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i6), Integer.valueOf(i5)) : String.format("%02d:%02d", Integer.valueOf(i6), Integer.valueOf(i5));
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.I == 0) {
            Intent action = new Intent(this, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.STOP");
            Object obj = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(action);
            } else {
                startService(action);
            }
        }
        super.finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent(this, (Class<?>) MusicService.class);
        if (view == this.y) {
            if (this.I == 3) {
                Intent action = new Intent(this, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.PAUSE");
                Object obj = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    startForegroundService(action);
                } else {
                    startService(action);
                }
                this.y.setImageResource(R.drawable.ic_media_play);
                return;
            }
            Intent action2 = new Intent(this, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.PLAY");
            Object obj2 = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(action2);
            } else {
                startService(action2);
            }
            this.y.setImageResource(R.drawable.ic_media_pause);
            return;
        }
        if (view == this.z) {
            Intent action3 = intent.setAction("com.noinnion.android.greader.reader.action.FORWARD");
            Object obj3 = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(action3);
                return;
            } else {
                startService(action3);
                return;
            }
        }
        if (view == this.A) {
            Intent action4 = intent.setAction("com.noinnion.android.greader.reader.action.REWIND");
            Object obj4 = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(action4);
                return;
            } else {
                startService(action4);
                return;
            }
        }
        if (view != this.B) {
            if (view == this.C) {
                finish();
                return;
            }
            return;
        }
        this.H = false;
        Intent action5 = intent.setAction("com.noinnion.android.greader.reader.action.STOP");
        Object obj5 = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            startForegroundService(action5);
        } else {
            startService(action5);
        }
        this.y.setImageResource(R.drawable.ic_media_play);
        finish();
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
        setContentView(R.layout.music);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            s().x(toolbar);
            t().t(R.string.media_now_playing);
            t().o(true);
        }
        this.J = (TextView) findViewById(R.id.media_title);
        this.K = (TextView) findViewById(R.id.play_time);
        this.L = (TextView) findViewById(R.id.duration);
        this.y = (ImageView) findViewById(R.id.play_button);
        this.z = (ImageView) findViewById(R.id.forward_button);
        this.A = (ImageView) findViewById(R.id.rewind_button);
        this.B = (Button) findViewById(R.id.stop_button);
        this.C = (Button) findViewById(R.id.close_button);
        this.y.setOnClickListener(this);
        this.z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.B.setOnClickListener(this);
        this.C.setOnClickListener(this);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekbar);
        this.D = seekBar;
        seekBar.setOnSeekBarChangeListener(new wr6(this));
        bindService(new Intent(this, (Class<?>) MusicService.class), this.G, 1);
    }

    @Override // com.noinnion.android.reader.ui.BaseDialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unbindService(this.G);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 79 && i != 85) {
            return super.onKeyDown(i, keyEvent);
        }
        Intent action = new Intent(this, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.TOGGLE_PLAYBACK");
        Object obj = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            startForegroundService(action);
            return true;
        }
        startService(action);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        onBackPressed();
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.E = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.E = true;
        Handler handler = this.M;
        handler.sendMessage(handler.obtainMessage(-559038737));
    }
}
