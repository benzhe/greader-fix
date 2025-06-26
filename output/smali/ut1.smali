.class public final synthetic Lut1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxs0;


# direct methods
.method public constructor <init>(Lmt1;Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lut1;->e:Lxs0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lut1;->e:Lxs0;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->f()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzg()Lpr0;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lpr0;->e:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
