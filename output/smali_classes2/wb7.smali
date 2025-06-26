.class public abstract Lwb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxb7<",
        "TT;>;"
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
.method public final e(Lyb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lwb7;->f(Lyb7;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    throw v0

    :catch_0
    move-exception p1

    .line 7
    throw p1
.end method

.method public abstract f(Lyb7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final g(Lgb7;)Lmb7;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgb7;",
            ")",
            "Lmb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v1, Lwe7;

    invoke-direct {v1, p0}, Lwe7;-><init>(Lwb7;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 3
    sget v2, Lmb7;->e:I

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string p1, "capacity"

    .line 4
    invoke-static {v2, p1}, Led7;->a(ILjava/lang/String;)I

    .line 5
    new-instance p1, Lcf7;

    sget-object v5, Ldd7;->c:Lqc7;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcf7;-><init>(Lmb7;IZZLqc7;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lff7;

    invoke-direct {p1, v1}, Lff7;-><init>(Lmb7;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Ldf7;

    invoke-direct {p1, v1}, Ldf7;-><init>(Lmb7;)V

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lef7;

    invoke-direct {p1, v1}, Lef7;-><init>(Lmb7;)V

    return-object p1

    :cond_3
    return-object v1
.end method
