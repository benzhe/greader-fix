.class public final Ltd7;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljb7;",
        "Lic7;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lmc7;

    invoke-direct {v0, p1}, Lmc7;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
