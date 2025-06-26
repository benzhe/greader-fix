.class public final synthetic Lzw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lww0;


# direct methods
.method public constructor <init>(Lww0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzw0;->e:Lww0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzw0;->e:Lww0;

    .line 2
    iget-object v1, v0, Lww0;->e:Lxw0;

    invoke-interface {v1}, Lxw0;->G()V

    .line 3
    iget-object v0, v0, Lww0;->e:Lxw0;

    invoke-interface {v0}, Lxw0;->n0()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwi()V

    :cond_0
    return-void
.end method
