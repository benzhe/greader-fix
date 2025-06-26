.class public final Lcom/noinnion/android/greader/service/TtsService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/service/TtsService$a;,
        Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;,
        Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;
    }
.end annotation


# static fields
.field public static A:Landroid/speech/tts/TextToSpeech;

.field public static B:Lcom/noinnion/android/greader/service/TtsService;

.field public static C:Z


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lkv6;",
            ">;"
        }
    .end annotation
.end field

.field public l:J

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/Locale;

.field public s:Landroid/app/NotificationManager;

.field public t:Lm7;

.field public u:Z

.field public v:Z

.field public w:Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;

.field public x:Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;

.field public final y:Lhc7;

.field public final z:Lop6$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->o:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lhc7;

    invoke-direct {v0}, Lhc7;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->y:Lhc7;

    .line 8
    new-instance v0, Lcom/noinnion/android/greader/service/TtsService$f;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/service/TtsService$f;-><init>(Lcom/noinnion/android/greader/service/TtsService;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->z:Lop6$a;

    return-void
.end method

.method public static final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->B:Lcom/noinnion/android/greader/service/TtsService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final a([J)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-wide v2, p1, v1

    .line 3
    new-instance v4, Lkv6;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lkv6;-><init>(JLjava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Lkv6;)V
    .locals 4

    const-string v0, "playListItem"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iput v0, p0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 5
    iput v0, p0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    .line 6
    new-instance v0, Lcom/noinnion/android/greader/service/TtsService$b;

    invoke-direct {v0, p0, p1}, Lcom/noinnion/android/greader/service/TtsService$b;-><init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V

    .line 7
    new-instance v1, Lmh7;

    invoke-direct {v1, v0}, Lmh7;-><init>(Ljava/util/concurrent/Callable;)V

    .line 8
    sget-object v0, Lej7;->a:Lzb7;

    .line 9
    invoke-virtual {v1, v0}, Lac7;->f(Lzb7;)Lac7;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/noinnion/android/greader/service/TtsService$c;

    invoke-direct {v2, p0, p1}, Lcom/noinnion/android/greader/service/TtsService$c;-><init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V

    .line 11
    new-instance v3, Lih7;

    invoke-direct {v3, v1, v2}, Lih7;-><init>(Lec7;Luc7;)V

    .line 12
    new-instance v1, Lrh7;

    invoke-direct {v1, v3, v0}, Lrh7;-><init>(Lec7;Lzb7;)V

    .line 13
    sget-object v0, Lej7;->b:Lzb7;

    .line 14
    invoke-virtual {v1, v0}, Lac7;->f(Lzb7;)Lac7;

    move-result-object v0

    const-string v1, "Single.fromCallable {\n  \u2026bserveOn(Schedulers.io())"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/noinnion/android/greader/service/TtsService$d;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/service/TtsService$d;-><init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V

    .line 16
    new-instance p1, Lcom/noinnion/android/greader/service/TtsService$e;

    invoke-direct {p1, p0}, Lcom/noinnion/android/greader/service/TtsService$e;-><init>(Lcom/noinnion/android/greader/service/TtsService;)V

    .line 17
    invoke-static {v0, p1, v1}, Lbj7;->f(Lac7;Lpl7;Lpl7;)Lic7;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->y:Lhc7;

    const-string v1, "$this$addTo"

    .line 19
    invoke-static {p1, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "compositeDisposable"

    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Lhc7;->b(Lic7;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    .line 2
    invoke-static {p0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tts_service_v2"

    const-string v3, "channelId"

    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Text to Speech"

    const-string v5, "channelName"

    invoke-static {v4, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 5
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string v3, "notification"

    .line 7
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/app/NotificationManager;

    .line 8
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 9
    :goto_0
    new-instance v1, Lm7;

    invoke-direct {v1, v0, v2}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f110337

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    .line 11
    invoke-virtual {v1, p1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    .line 12
    iget-object v2, v1, Lm7;->s:Landroid/app/Notification;

    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const p1, 0x7f080148

    .line 13
    iget-object v2, v1, Lm7;->s:Landroid/app/Notification;

    iput p1, v2, Landroid/app/Notification;->icon:I

    const p1, 0x7f060208

    .line 14
    invoke-static {v0, p1}, Lu7;->b(Landroid/content/Context;I)I

    move-result p1

    .line 15
    iput p1, v1, Lm7;->p:I

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17
    iget-object p1, v1, Lm7;->s:Landroid/app/Notification;

    iput-wide v2, p1, Landroid/app/Notification;->when:J

    const/4 p1, 0x1

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v1, v2, p1}, Lm7;->f(IZ)V

    const/16 p1, 0x10

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, p1, v2}, Lm7;->f(IZ)V

    .line 20
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    .line 21
    iput p1, v1, Lm7;->g:I

    .line 22
    const-class p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    const/high16 v3, 0x10000000

    invoke-static {v0, p1, v3}, Ljo;->I(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v3, 0x8000000

    .line 23
    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 24
    iput-object p1, v1, Lm7;->f:Landroid/app/PendingIntent;

    .line 25
    new-instance p1, Landroid/content/Intent;

    const-string v4, "com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p2, :cond_1

    const v4, 0x7f080150

    goto :goto_1

    :cond_1
    const v4, 0x7f080152

    :goto_1
    if-eqz p2, :cond_2

    const p2, 0x7f110185

    goto :goto_2

    :cond_2
    const p2, 0x7f110186

    .line 27
    :goto_2
    invoke-virtual {p0, p2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, v4, p2, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    .line 28
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f08014a

    const v4, 0x7f110183

    .line 30
    invoke-virtual {p0, v4}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, p2, v4, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    .line 31
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const p2, 0x7f08014e

    const v0, 0x7f110182

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p2, v0, p1}, Lm7;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;

    .line 34
    iput-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->t:Lm7;

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "service_tts_read_title"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    iput-boolean v1, p0, Lcom/noinnion/android/greader/service/TtsService;->u:Z

    const-string v1, "service_tts_mark_read"

    .line 4
    invoke-static {v0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/noinnion/android/greader/service/TtsService;->v:Z

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, v0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/service/TtsService$a;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/service/TtsService$a;-><init>(Lcom/noinnion/android/greader/service/TtsService;)V

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 5
    sput-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public final h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 4
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->k()V

    .line 5
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 6
    iput v0, p0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 7
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    iget v1, p0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.INIT_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->o:Ljava/util/ArrayList;

    const-string v2, "ttsTextArray"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    const-string v2, "ttsTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    const-string v2, "ttsCurrParagraph"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget v1, p0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    const-string v2, "ttsCurrSentence"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    sget-boolean v1, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    const-string v2, "ttsIsSpeaking"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/noinnion/android/greader/service/TtsService;->d(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->t:Lm7;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->s:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    const v2, 0x7f090224

    invoke-virtual {v0}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public final l(II)V
    .locals 10

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/noinnion/android/greader/service/TtsService;->d(Ljava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->t:Lm7;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/service/TtsService;->s:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    const v3, 0x7f090224

    invoke-virtual {v1}, Lm7;->b()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 5
    :cond_0
    iput p1, p0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 6
    iput p2, p0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    .line 7
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->f()V

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge p1, v1, :cond_8

    .line 9
    iget-object v3, p0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mParagraphs[i]"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v5, p2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 10
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 11
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "par[j]"

    invoke-static {v6, v7}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    .line 12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utteranceId"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 14
    sget-object v2, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 15
    :cond_3
    sget-object v8, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v6, v0, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_5
    sget-object v4, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v5, v3, :cond_6

    const/16 v3, 0x3e8

    goto :goto_3

    :cond_6
    const/16 v3, 0x190

    :goto_3
    int-to-long v5, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->j()V

    return-void
.end method

.method public final m(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/noinnion/android/greader/service/TtsService;->v:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/noinnion/android/greader/service/TtsService;->l:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-wide v3, p0, Lcom/noinnion/android/greader/service/TtsService;->l:J

    invoke-static {v0, v3, v4, v2}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v4

    new-array v5, v1, [J

    iget-wide v6, v3, Lap6;->e:J

    aput-wide v6, v5, v2

    const/4 v6, 0x0

    new-array v7, v1, [J

    iget-wide v8, v3, Lap6;->g:J

    aput-wide v8, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lep6;->B([J[J[JZZ)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->n()V

    .line 7
    :cond_2
    iget p1, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mPlayList[mCurrentPosition]"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkv6;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V

    return-void

    .line 9
    :cond_3
    :goto_0
    sput-boolean v2, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 10
    iput v2, p0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 11
    iput v2, p0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    .line 12
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->j()V

    .line 13
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->k()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 2
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->t:Lm7;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    .line 3
    iput p1, v0, Lm7;->g:I

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Lm7;->j(Ljava/lang/CharSequence;)Lm7;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->s:Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    const p2, 0x7f090224

    invoke-virtual {v0}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->z:Lop6$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sput-object p0, Lcom/noinnion/android/greader/service/TtsService;->B:Lcom/noinnion/android/greader/service/TtsService;

    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->s:Landroid/app/NotificationManager;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.INIT_PREFERENCES"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;-><init>(Lcom/noinnion/android/greader/service/TtsService;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->w:Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;-><init>(Lcom/noinnion/android/greader/service/TtsService;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->x:Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->y:Lhc7;

    invoke-virtual {v0}, Lhc7;->d()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->w:Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->x:Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_1
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 8
    :cond_2
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 9
    :cond_3
    sput-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    .line 10
    :cond_4
    sput-object v1, Lcom/noinnion/android/greader/service/TtsService;->B:Lcom/noinnion/android/greader/service/TtsService;

    .line 11
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onInit(I)V
    .locals 10

    if-nez p1, :cond_11

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "service_tts_default_locale"

    .line 4
    invoke-static {v2, v3}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v3}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    const-string v5, "(this as java.lang.String).toLowerCase()"

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v3}, Ljx6;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 7
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "voice"

    .line 9
    invoke-static {v7, v8}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 10
    sget-object v8, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-nez v8, :cond_4

    .line 11
    new-instance v8, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v8, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v8, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    .line 12
    :cond_4
    sget-object v8, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v7}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, -0x2

    :goto_3
    if-ltz v8, :cond_3

    .line 13
    invoke-static {v7}, Ljx6;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 14
    iget-object v9, p0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 16
    iput-object v7, p0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    goto :goto_2

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_9

    goto :goto_5

    .line 18
    :cond_9
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    if-nez p1, :cond_b

    .line 19
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lek7;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_a
    if-eqz v4, :cond_b

    .line 20
    invoke-static {v4}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    .line 21
    :cond_b
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.INIT_LANGUAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    const-string v2, "ttsAvailableVoices"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyd;->c(Landroid/content/Intent;)Z

    const/4 v1, 0x1

    :cond_c
    :goto_5
    const-string p1, "com.noinnion.android.greader.reader.action.STOP_SERVICE"

    if-eqz v1, :cond_10

    .line 24
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_d

    if-eqz v1, :cond_d

    .line 25
    iget-object v2, p0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 26
    :cond_d
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/noinnion/android/greader/service/TtsService;->d(Ljava/lang/String;Z)V

    .line 28
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->t:Lm7;

    if-eqz v0, :cond_e

    const v1, 0x7f090224

    .line 29
    invoke-virtual {v0}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 30
    :cond_e
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 31
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mPlayList[mCurrentPosition]"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkv6;

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V

    goto :goto_6

    :cond_f
    const v0, 0x7f110334

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    .line 35
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_6

    :cond_10
    const v0, 0x7f110335

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    .line 39
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_11
    :goto_6
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string p2, "intent"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "itemId"

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 p3, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const-string v0, "ttsUrl"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lkv6;

    invoke-direct {v1, v2, v3, v0}, Lkv6;-><init>(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_a

    const-string v3, "intent.action ?: return START_NOT_STICKY"

    invoke-static {v0, v3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.noinnion.android.greader.reader.action.INIT_TTS"

    .line 6
    invoke-static {v0, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "itemIds"

    if-eqz v3, :cond_4

    const-string p2, "ttsAvailableVoices"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/greader/service/TtsService;->p:Ljava/util/ArrayList;

    const-string p2, "ttsTitle"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    iput-object p2, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/TtsService;->a([J)V

    .line 11
    sget-object p1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 13
    sget-object p1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 14
    :cond_3
    sput-object p3, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    goto/16 :goto_2

    :cond_4
    const-string v3, "com.noinnion.android.greader.reader.action.APPEND"

    .line 15
    invoke-static {v0, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    .line 16
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/TtsService;->a([J)V

    const p1, 0x7f110331

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/noinnion/android/greader/service/TtsService;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "com.noinnion.android.greader.reader.action.PlAY_NOW"

    .line 21
    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_9

    .line 22
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    .line 25
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/noinnion/android/greader/service/TtsService;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "com.noinnion.android.greader.reader.action.PlAY_NEXT"

    .line 26
    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 28
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    iget v0, p0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/noinnion/android/greader/service/TtsService;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/noinnion/android/greader/service/TtsService;->f()V

    :cond_a
    return v2
.end method
