.class public final Lug7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lyb7;
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Lyb7<",
        "TR;>;",
        "Ltb7<",
        "TT;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Lxb7<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Lxb7<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lug7$a;->e:Lyb7;

    .line 3
    iput-object p2, p0, Lug7$a;->f:Luc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lug7$a;->e:Lyb7;

    invoke-interface {v0}, Lyb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lug7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lug7$a;->f:Luc7;

    invoke-interface {v0, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast p1, Lxb7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1, p0}, Lxb7;->e(Lyb7;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lug7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
