.class public final enum Lyc7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc7;",
        ">;",
        "Lic7;"
    }
.end annotation


# static fields
.field public static final enum e:Lyc7;

.field public static final synthetic f:[Lyc7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lyc7;

    const-string v1, "DISPOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyc7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyc7;->e:Lyc7;

    const/4 v1, 0x1

    new-array v1, v1, [Lyc7;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lyc7;->f:[Lyc7;

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

.method public static i(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic7;

    .line 2
    sget-object v1, Lyc7;->e:Lyc7;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic7;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lic7;->k()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lic7;)Z
    .locals 1

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;",
            "Lic7;",
            ")Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic7;

    .line 2
    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Lic7;->k()V

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyc7;
    .locals 1

    .line 1
    const-class v0, Lyc7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc7;

    return-object p0
.end method

.method public static values()[Lyc7;
    .locals 1

    .line 1
    sget-object v0, Lyc7;->f:[Lyc7;

    invoke-virtual {v0}, [Lyc7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc7;

    return-object v0
.end method

.method public static w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lic7;",
            ">;",
            "Lic7;",
            ")Z"
        }
    .end annotation

    const-string v0, "d is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lic7;->k()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lyc7;->e:Lyc7;

    if-eq p0, p1, :cond_0

    .line 5
    new-instance p0, Lnc7;

    const-string p1, "Disposable already set!"

    invoke-direct {p0, p1}, Lnc7;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static x(Lic7;Lic7;)Z
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
    invoke-interface {p1}, Lic7;->k()V

    .line 3
    new-instance p0, Lnc7;

    const-string p1, "Disposable already set!"

    invoke-direct {p0, p1}, Lnc7;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ln56;->z1(Ljava/lang/Throwable;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public k()V
    .locals 0

    return-void
.end method
