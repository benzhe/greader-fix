.class public final Lfz1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/app/AlertDialog;

.field public final synthetic f:Ljava/util/Timer;

.field public final synthetic g:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfz1;->e:Landroid/app/AlertDialog;

    iput-object p2, p0, Lfz1;->f:Ljava/util/Timer;

    iput-object p3, p0, Lfz1;->g:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfz1;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lfz1;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iget-object v0, p0, Lfz1;->g:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    :cond_0
    return-void
.end method
