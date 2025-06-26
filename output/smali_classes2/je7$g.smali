.class public abstract Lje7$g;
.super Lje7$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lje7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lje7$a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx38;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lje7$a;-><init>(Lx38;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lje7$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lje7$a;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 6
    iget-object v0, p0, Lje7$a;->e:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 7
    invoke-static {p0, v0, v1}, Ln56;->E1(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lje7$g;->i()V

    :goto_0
    return-void
.end method

.method public abstract i()V
.end method
