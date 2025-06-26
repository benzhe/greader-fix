.class public final Lmh7;
.super Lac7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lac7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lac7;-><init>()V

    .line 2
    iput-object p1, p0, Lmh7;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public g(Lcc7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln56;->t0()Lic7;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcc7;->c(Lic7;)V

    .line 3
    check-cast v0, Ljc7;

    invoke-virtual {v0}, Ljc7;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmh7;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The callable returned a null value"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ljc7;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lcc7;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0}, Ljc7;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lcc7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
