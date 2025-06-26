.class public final Llq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqb7<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmb7;)Lw38;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb7<",
            "TT;>;)",
            "Lw38<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lmb7;->p()Lpc7;

    move-result-object p1

    invoke-virtual {p1}, Lpc7;->y()Lmb7;

    move-result-object p1

    .line 2
    new-instance v0, Llf7;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Llf7;-><init>(Lmb7;J)V

    .line 3
    sget-object p1, Lof7;->j:Ljava/util/concurrent/Callable;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    new-instance v2, Lof7$d;

    invoke-direct {v2, v1, p1}, Lof7$d;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    .line 6
    new-instance v3, Lof7;

    invoke-direct {v3, v2, v0, v1, p1}, Lof7;-><init>(Lw38;Lmb7;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-virtual {v3}, Lpc7;->y()Lmb7;

    move-result-object p1

    const-string v0, "upstream\n               \u2026              .refCount()"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
