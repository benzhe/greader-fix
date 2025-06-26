.class public final Ltg7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lpb7;
.implements Ljb7;
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ly38;",
        ">;",
        "Lpb7<",
        "TR;>;",
        "Ljb7;",
        "Ly38;"
    }
.end annotation


# instance fields
.field public final e:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public f:Lw38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw38<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public g:Lic7;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lx38;Lw38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TR;>;",
            "Lw38<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Ltg7$a;->e:Lx38;

    .line 3
    iput-object p2, p0, Ltg7$a;->f:Lw38;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ltg7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltg7$a;->f:Lw38;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ltg7$a;->e:Lx38;

    invoke-interface {v0}, Lx38;->a()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Ltg7$a;->f:Lw38;

    .line 4
    invoke-interface {v0, p0}, Lw38;->i(Lx38;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltg7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltg7$a;->g:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Ltg7$a;->g:Lic7;

    .line 3
    iget-object p1, p0, Ltg7$a;->e:Lx38;

    invoke-interface {p1, p0}, Lx38;->e(Ly38;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltg7$a;->g:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 2
    invoke-static {p0}, Lpi7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

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
    iget-object v0, p0, Ltg7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ly38;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltg7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1}, Lpi7;->t(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Ly38;)Z

    return-void
.end method

.method public l(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltg7$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1, p2}, Lpi7;->k(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
