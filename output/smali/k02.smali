.class public final synthetic Lk02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ld02;

.field public final f:Lxw0;


# direct methods
.method public constructor <init>(Ld02;Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk02;->e:Ld02;

    iput-object p2, p0, Lk02;->f:Lxw0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk02;->e:Ld02;

    iget-object v1, p0, Lk02;->f:Lxw0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1}, Lxw0;->u()V

    .line 3
    invoke-interface {v1}, Lxw0;->f()Lrx0;

    move-result-object v1

    .line 4
    iget-object v0, v0, Ld02;->d:Lll2;

    iget-object v0, v0, Lll2;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lrx0;->Z6(Lcom/google/android/gms/internal/ads/zzaaz;)V

    :cond_0
    return-void
.end method
