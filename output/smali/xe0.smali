.class public final synthetic Lxe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lue0;

.field public final f:Lpd0;


# direct methods
.method public constructor <init>(Lue0;Lpd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe0;->e:Lue0;

    iput-object p2, p0, Lxe0;->f:Lpd0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxe0;->e:Lue0;

    iget-object v1, p0, Lxe0;->f:Lpd0;

    .line 2
    iget-object v0, v0, Lue0;->a:Lse0;

    .line 3
    iget-object v0, v0, Lse0;->d:Lcom/google/android/gms/ads/internal/util/zzar;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1}, Lpd0;->destroy()V

    return-void
.end method
