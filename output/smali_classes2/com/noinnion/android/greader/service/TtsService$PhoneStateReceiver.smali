.class public final Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PhoneStateReceiver"
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
    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

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

    const-string p1, "state"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$PhoneStateReceiver;->a:Lcom/noinnion/android/greader/service/TtsService;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 5
    sput-boolean p2, Lcom/noinnion/android/greader/service/TtsService;->C:Z

    .line 6
    invoke-virtual {p1}, Lcom/noinnion/android/greader/service/TtsService;->k()V

    .line 7
    sget-object v0, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 8
    iput p2, p1, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 9
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method
