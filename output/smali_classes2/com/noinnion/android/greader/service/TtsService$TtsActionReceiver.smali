.class public final Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TtsActionReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/service/TtsService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.noinnion.android.greader.reader.action.INIT_PREFERENCES"

    .line 2
    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    .line 4
    sget-object p2, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    .line 5
    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService;->e()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "com.noinnion.android.greader.reader.action.MEDIA_PLAY_PAUSE"

    .line 6
    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService;->h()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_ITEM"

    .line 8
    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    const/4 p2, 0x1

    .line 10
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    .line 11
    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "com.noinnion.android.greader.reader.action.MEDIA_NEXT_PARAGRAPH"

    .line 12
    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$TtsActionReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p2, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz p2, :cond_3

    const/4 v0, 0x5

    .line 16
    iput v0, p1, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 17
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_3
    :goto_0
    return-void
.end method
