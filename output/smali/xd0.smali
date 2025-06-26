.class public final synthetic Lxd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liy0;


# instance fields
.field public final a:Lce0;


# direct methods
.method public constructor <init>(Lce0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd0;->a:Lce0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lxd0;->a:Lce0;

    .line 1
    iget-object v1, v0, Lce0;->a:Lyd0;

    iget-object v2, v0, Lce0;->b:Lse0;

    iget-object v0, v0, Lce0;->c:Lpd0;

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    new-instance v4, Lfe0;

    invoke-direct {v4, v1, v2, v0}, Lfe0;-><init>(Lyd0;Lse0;Lpd0;)V

    const/16 v0, 0x2710

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
