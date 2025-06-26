.class public final enum Lpi7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ly38;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpi7;",
        ">;",
        "Ly38;"
    }
.end annotation


# static fields
.field public static final enum e:Lpi7;

.field public static final synthetic f:[Lpi7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpi7;

    const-string v1, "CANCELLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpi7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpi7;->e:Lpi7;

    const/4 v1, 0x1

    new-array v1, v1, [Lpi7;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lpi7;->f:[Lpi7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static C(Ly38;Ly38;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "next is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p1}, Ly38;->cancel()V

    .line 3
    new-instance p0, Lnc7;

    const-string p1, "Subscription already set!"

    invoke-direct {p0, p1}, Lnc7;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    .line 2
    sget-object v1, Lpi7;->e:Lpi7;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly38;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ly38;->cancel()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly38;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2, p3}, Ly38;->l(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2, p3}, Lpi7;->y(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1, p2, p3}, Ln56;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly38;

    if-eqz p0, :cond_1

    const-wide/16 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p0, v0, v1}, Ly38;->l(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static t(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Ly38;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ly38;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lpi7;->x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide p0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p2, p0, p1}, Ly38;->l(J)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lpi7;
    .locals 1

    .line 1
    const-class v0, Lpi7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpi7;

    return-object p0
.end method

.method public static values()[Lpi7;
    .locals 1

    .line 1
    sget-object v0, Lpi7;->f:[Lpi7;

    invoke-virtual {v0}, [Lpi7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpi7;

    return-object v0
.end method

.method public static w(J)V
    .locals 2

    .line 1
    new-instance v0, Lnc7;

    const-string v1, "More produced than requested: "

    invoke-static {v1, p0, p1}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnc7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static x(Ljava/util/concurrent/atomic/AtomicReference;Ly38;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ly38;",
            ">;",
            "Ly38;",
            ")Z"
        }
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Ly38;->cancel()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lpi7;->e:Lpi7;

    if-eq p0, p1, :cond_0

    .line 5
    new-instance p0, Lnc7;

    const-string p1, "Subscription already set!"

    invoke-direct {p0, p1}, Lnc7;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static y(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n > 0 required but it was "

    invoke-static {v1, p0, p1}, Ljo;->j(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public l(J)V
    .locals 0

    return-void
.end method
