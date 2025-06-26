.class public Lcom/noinnion/android/greader/ui/media/MusicService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lxr6;
.implements Lzr6$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/media/MusicService$c;,
        Lcom/noinnion/android/greader/ui/media/MusicService$d;
    }
.end annotation


# instance fields
.field public e:Landroid/media/MediaPlayer;

.field public f:Ltr6;

.field public g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

.field public h:Z

.field public i:Landroid/net/Uri;

.field public j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Landroid/net/wifi/WifiManager$WifiLock;

.field public o:Lyr6;

.field public p:Las6;

.field public q:Landroid/graphics/Bitmap;

.field public r:Landroid/content/ComponentName;

.field public s:Landroid/media/AudioManager;

.field public t:Landroid/app/NotificationManager;

.field public u:Lm7;

.field public v:Landroid/content/BroadcastReceiver;

.field public final w:Lur6$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->f:Ltr6;

    .line 4
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->e:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->h:Z

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->i:Landroid/net/Uri;

    .line 7
    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$c;->e:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->l:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->m:Z

    .line 11
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    .line 12
    new-instance v0, Lcom/noinnion/android/greader/ui/media/MusicService$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/media/MusicService$a;-><init>(Lcom/noinnion/android/greader/ui/media/MusicService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->v:Landroid/content/BroadcastReceiver;

    .line 13
    new-instance v0, Lcom/noinnion/android/greader/ui/media/MusicService$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/media/MusicService$b;-><init>(Lcom/noinnion/android/greader/ui/media/MusicService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->w:Lur6$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->e:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->f:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->g:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->f:Ltr6;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    iget-object v3, v0, Ltr6;->a:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$c;->e:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_service_v2"

    const-string v2, "Music Player"

    .line 2
    invoke-static {p0, v1, v2}, Lvx6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lm7;

    invoke-direct {v2, v0, v1}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    const v1, 0x7f110184

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    .line 5
    invoke-virtual {v2, p1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 6
    iget-object v1, v2, Lm7;->s:Landroid/app/Notification;

    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 7
    iget-object p1, v2, Lm7;->s:Landroid/app/Notification;

    const v1, 0x7f080147

    iput v1, p1, Landroid/app/Notification;->icon:I

    const p1, 0x7f060208

    .line 8
    invoke-static {v0, p1}, Lu7;->b(Landroid/content/Context;I)I

    move-result p1

    .line 9
    iput p1, v2, Lm7;->p:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 11
    iget-object p1, v2, Lm7;->s:Landroid/app/Notification;

    iput-wide v3, p1, Landroid/app/Notification;->when:J

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v2, p1, v1}, Lm7;->f(IZ)V

    const/16 p1, 0x10

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v2, p1, v1}, Lm7;->f(IZ)V

    .line 14
    const-class p1, Lcom/noinnion/android/greader/ui/media/MusicActivity;

    const/high16 v2, 0x10000000

    invoke-static {v0, p1, v2}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x8000000

    .line 15
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 16
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    .line 17
    iput-object p1, v3, Lm7;->f:Landroid/app/PendingIntent;

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.REWIND"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 20
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    const v4, 0x7f080154

    const-string v5, "-10s"

    invoke-virtual {v3, v4, v5, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.noinnion.android.greader.reader.action.PLAY"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 23
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    if-eqz p2, :cond_0

    const v4, 0x7f080150

    goto :goto_0

    :cond_0
    const v4, 0x7f080152

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x7f110185

    goto :goto_1

    :cond_1
    const p2, 0x7f110186

    :goto_1
    invoke-virtual {p0, p2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v3, v4, p2, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    .line 24
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.noinnion.android.greader.reader.action.FORWARD"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    const v0, 0x7f08014c

    const-string v1, "+30s"

    invoke-virtual {p2, v0, v1, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lost audio focus."

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "can duck"

    goto :goto_0

    :cond_0
    const-string v2, "no duck"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->f:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->e:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    :goto_1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->a()V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->l:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/media/MusicService;->k(Z)V

    if-eqz p1, :cond_c

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 9
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 10
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    :goto_0
    const-string v1, "http:"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->m:Z

    .line 13
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const-string v1, "file:"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_3

    .line 17
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 18
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_3
    const-string v1, "/"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Ln56;->S0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    .line 22
    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (loading)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/noinnion/android/greader/ui/media/MusicService;->l(Ljava/lang/String;Z)V

    .line 24
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->s:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->r:Landroid/content/ComponentName;

    invoke-static {v1, v4}, Lvr6;->a(Landroid/media/AudioManager;Landroid/content/ComponentName;)V

    .line 25
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    if-nez v1, :cond_5

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->r:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    new-instance v4, Las6;

    invoke-static {p0, v0, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v4, v1}, Las6;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    .line 29
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->s:Landroid/media/AudioManager;

    .line 30
    sget-boolean v5, Lbs6;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v5, :cond_4

    goto :goto_4

    .line 31
    :cond_4
    :try_start_1
    sget-object v5, Lbs6;->b:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    .line 32
    iget-object v4, v4, Las6;->a:Ljava/lang/Object;

    aput-object v4, v6, v0

    .line 33
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 34
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RemoteControlHelper"

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    invoke-virtual {v1, v3}, Las6;->a(I)V

    .line 36
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    const/16 v3, 0xb5

    .line 37
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-boolean v4, Las6;->f:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v4, :cond_6

    .line 39
    :try_start_3
    sget-object v4, Las6;->e:Ljava/lang/reflect/Method;

    iget-object v1, v1, Las6;->a:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    .line 41
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 42
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 43
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    .line 44
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-boolean v3, Las6;->f:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 46
    :try_start_5
    sget-object v3, Las6;->c:Ljava/lang/reflect/Method;

    iget-object v5, v1, Las6;->a:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    .line 47
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v0

    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 49
    :try_start_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move-object v3, v4

    .line 50
    :goto_6
    new-instance v5, Las6$b;

    invoke-direct {v5, v1, v3, v4}, Las6$b;-><init>(Las6;Ljava/lang/Object;Las6$a;)V

    const/4 v1, 0x2

    .line 51
    invoke-virtual {v5, v1, v4}, Las6$b;->a(ILjava/lang/String;)Las6$b;

    .line 52
    invoke-virtual {v5, v2, v4}, Las6$b;->a(ILjava/lang/String;)Las6$b;

    const/4 v3, 0x7

    .line 53
    invoke-virtual {v5, v3, p1}, Las6$b;->a(ILjava/lang/String;)Las6$b;

    const/16 p1, 0x9

    .line 54
    sget-boolean v3, Las6;->f:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v3, :cond_8

    .line 55
    :try_start_7
    iget-object v3, v5, Las6$b;->c:Ljava/lang/reflect/Method;

    iget-object v6, v5, Las6$b;->e:Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    .line 56
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    :goto_7
    const/16 p1, 0x64

    .line 57
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->q:Landroid/graphics/Bitmap;

    .line 58
    sget-boolean v6, Las6;->f:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v6, :cond_9

    .line 59
    :try_start_9
    iget-object v6, v5, Las6$b;->b:Ljava/lang/reflect/Method;

    iget-object v7, v5, Las6$b;->e:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    aput-object v3, v1, v2

    invoke-virtual {v6, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 60
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 61
    :cond_9
    :goto_8
    sget-boolean p1, Las6;->f:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    if-eqz p1, :cond_a

    .line 62
    :try_start_b
    iget-object p1, v5, Las6$b;->d:Ljava/lang/reflect/Method;

    iget-object v0, v5, Las6$b;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 63
    :try_start_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 64
    :cond_a
    :goto_9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 65
    iget-boolean p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->m:Z

    if-eqz p1, :cond_b

    .line 66
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_a

    .line 67
    :cond_b
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 68
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_a

    .line 69
    :cond_c
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_a
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/ui/media/MusicService;->c(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->t:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {v2}, Lm7;->b()Landroid/app/Notification;

    move-result-object v2

    const v3, 0x7f09021f

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->e:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v2, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->h:Z

    return-void

    .line 5
    :cond_0
    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v2, :cond_1

    .line 6
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 8
    invoke-virtual {p0, v1}, Lcom/noinnion/android/greader/ui/media/MusicService;->k(Z)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Las6;->a(I)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/ui/media/MusicService;->c(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->t:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {v2}, Lm7;->b()Landroid/app/Notification;

    move-result-object v2

    const v3, 0x7f09021f

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->e:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->i:Landroid/net/Uri;

    .line 5
    iput-boolean v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->h:Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->m()V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/media/MusicService;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v2, :cond_2

    .line 10
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 11
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/ui/media/MusicService;->l(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->a()V

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Las6;->a(I)V

    :cond_3
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v1, v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v1, v1, 0x7530

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_2

    .line 2
    :cond_0
    sget-object p1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->k(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->b()V

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->p:Las6;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Las6;->a(I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->e:Landroid/media/MediaPlayer;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/greader/ui/media/MusicService;->c(Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {p1}, Lm7;->b()Landroid/app/Notification;

    move-result-object p1

    const p2, 0x7f09021f

    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public m()V
    .locals 6

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$c;->g:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->f:Ltr6;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_0
    iget-object v4, v1, Ltr6;->a:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    :catchall_0
    :cond_0
    if-eqz v2, :cond_1

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->w:Lur6$a;

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->j(Z)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.PLAY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.REWIND"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.FORWARD"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "mylock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->n:Landroid/net/wifi/WifiManager$WifiLock;

    const-string v0, "notification"

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->t:Landroid/app/NotificationManager;

    const-string v0, "audio"

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->s:Landroid/media/AudioManager;

    .line 10
    new-instance v0, Lyr6;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lyr6;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->o:Lyr6;

    .line 11
    new-instance v0, Lzr6;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->o:Lyr6;

    invoke-direct {v0, v1, p0}, Lzr6;-><init>(Lyr6;Lzr6$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    new-instance v0, Ltr6;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ltr6;-><init>(Landroid/content/Context;Lxr6;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->f:Ltr6;

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->q:Landroid/graphics/Bitmap;

    .line 14
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/noinnion/android/greader/ui/media/MusicIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->r:Landroid/content/ComponentName;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/ui/media/MusicService;->k(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->b()V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->v:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x1

    const-string v0, ")"

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    const-string p2, "SERVER DIED ("

    .line 1
    invoke-static {p2, p3, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    const-string p2, "NOT VALID FOR PROGRESSIVE PLAYBACK ("

    .line 2
    invoke-static {p2, p3, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    const-string p2, "UNKNOWN ("

    .line 3
    invoke-static {p2, p3, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p3, "ERROR ("

    .line 4
    invoke-static {p3, p2, v0}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media player error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 6
    sget-object p2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 7
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->k(Z)V

    .line 8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->b()V

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->k:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {v0, p1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 4
    iget-object v0, v0, Lm7;->s:Landroid/app/Notification;

    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->t:Landroid/app/NotificationManager;

    const v0, 0x7f09021f

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {v1}, Lm7;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    sget-object p2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object p3, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    const/4 v0, 0x2

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    .line 2
    invoke-virtual {p0, v2, v1}, Lcom/noinnion/android/greader/ui/media/MusicService;->c(Ljava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->u:Lm7;

    invoke-virtual {v1}, Lm7;->b()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f09021f

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "com.noinnion.android.greader.reader.action.URL"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_a

    const-string v2, "com.noinnion.android.greader.reader.action.PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->l:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string p1, "com.noinnion.android.greader.reader.action.TOGGLE_PLAYBACK"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq p1, p3, :cond_4

    if-ne p1, p2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->f()V

    goto :goto_2

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->g()V

    goto :goto_2

    :cond_5
    const-string p1, "com.noinnion.android.greader.reader.action.PLAY"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->g()V

    goto :goto_2

    :cond_6
    const-string p1, "com.noinnion.android.greader.reader.action.PAUSE"

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->f()V

    goto :goto_2

    :cond_7
    const-string p1, "com.noinnion.android.greader.reader.action.FORWARD"

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->i()V

    goto :goto_2

    :cond_8
    const-string p1, "com.noinnion.android.greader.reader.action.STOP"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    invoke-virtual {p0, v3}, Lcom/noinnion/android/greader/ui/media/MusicService;->j(Z)V

    goto :goto_2

    :cond_9
    const-string p1, "com.noinnion.android.greader.reader.action.REWIND"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 20
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->h()V

    goto :goto_2

    .line 21
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->e:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne v1, v2, :cond_b

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->i:Landroid/net/Uri;

    .line 23
    iput-boolean v3, p0, Lcom/noinnion/android/greader/ui/media/MusicService;->h:Z

    goto :goto_2

    .line 24
    :cond_b
    sget-object v2, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq v1, v2, :cond_c

    if-eq v1, p3, :cond_c

    if-ne v1, p2, :cond_d

    .line 25
    :cond_c
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/media/MusicService;->m()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->e(Ljava/lang/String;)V

    :cond_d
    :goto_2
    return v0
.end method
