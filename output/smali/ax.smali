.class public final Lax;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/util/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzj;Luw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lax;->a:Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lax;->a:Lcom/google/android/gms/ads/internal/util/zzj;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/google/android/gms/ads/internal/util/zzj;->c:Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lax;->a:Lcom/google/android/gms/ads/internal/util/zzj;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/google/android/gms/ads/internal/util/zzj;->c:Z

    :cond_1
    return-void
.end method
