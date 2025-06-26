package com.noinnion.android.greader.ui.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.KeyEvent;
import defpackage.u7;

/* loaded from: classes2.dex */
public class MusicIntentReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null && action.equals("android.media.AUDIO_BECOMING_NOISY")) {
            Intent action2 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.PAUSE");
            Object obj = u7.a;
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(action2);
                return;
            } else {
                context.startService(action2);
                return;
            }
        }
        if (action == null || !action.equals("android.intent.action.MEDIA_BUTTON")) {
            return;
        }
        KeyEvent keyEvent = (KeyEvent) intent.getExtras().get("android.intent.extra.KEY_EVENT");
        if (keyEvent.getAction() != 0) {
            return;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 79) {
            if (keyCode == 126) {
                Intent action3 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.PLAY");
                Object obj2 = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(action3);
                    return;
                } else {
                    context.startService(action3);
                    return;
                }
            }
            if (keyCode == 127) {
                Intent action4 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.PAUSE");
                Object obj3 = u7.a;
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(action4);
                    return;
                } else {
                    context.startService(action4);
                    return;
                }
            }
            switch (keyCode) {
                case 86:
                    Intent action5 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.STOP");
                    Object obj4 = u7.a;
                    if (Build.VERSION.SDK_INT < 26) {
                        context.startService(action5);
                        break;
                    } else {
                        context.startForegroundService(action5);
                        break;
                    }
                case 87:
                    Intent action6 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.FORWARD");
                    Object obj5 = u7.a;
                    if (Build.VERSION.SDK_INT < 26) {
                        context.startService(action6);
                        break;
                    } else {
                        context.startForegroundService(action6);
                        break;
                    }
                case 88:
                    Intent action7 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.REWIND");
                    Object obj6 = u7.a;
                    if (Build.VERSION.SDK_INT < 26) {
                        context.startService(action7);
                        break;
                    } else {
                        context.startForegroundService(action7);
                        break;
                    }
            }
        }
        Intent action8 = new Intent(context, (Class<?>) MusicService.class).setAction("com.noinnion.android.greader.reader.action.TOGGLE_PLAYBACK");
        Object obj7 = u7.a;
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(action8);
        } else {
            context.startService(action8);
        }
    }
}
