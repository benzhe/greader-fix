.class public final Lg;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg;->e:I

    iput-object p2, p0, Lg;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg;->e:I

    const/4 v1, 0x2

    const-string v2, "null cannot be cast to non-null type kotlin.Throwable"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    :try_start_0
    iget-object v0, p0, Lg;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljava/lang/reflect/Constructor;

    :try_start_1
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    :goto_0
    instance-of p1, v0, Lsj7$a;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 5
    :goto_1
    check-cast v5, Ljava/lang/Throwable;

    return-object v5

    .line 6
    :cond_2
    throw v5

    .line 7
    :cond_3
    check-cast p1, Ljava/lang/Throwable;

    .line 8
    :try_start_2
    iget-object v0, p0, Lg;->f:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    check-cast v0, Ljava/lang/reflect/Constructor;

    :try_start_3
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {p1}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    :goto_2
    instance-of p1, v0, Lsj7$a;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v0

    .line 11
    :goto_3
    check-cast v5, Ljava/lang/Throwable;

    return-object v5

    .line 12
    :cond_6
    check-cast p1, Ljava/lang/Throwable;

    .line 13
    :try_start_4
    iget-object v0, p0, Lg;->f:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    check-cast v0, Ljava/lang/reflect/Constructor;

    :try_start_5
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 14
    invoke-static {p1}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    :goto_4
    instance-of v0, p1, Lsj7$a;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, p1

    .line 16
    :goto_5
    check-cast v5, Ljava/lang/Throwable;

    return-object v5

    .line 17
    :cond_9
    check-cast p1, Ljava/lang/Throwable;

    .line 18
    :try_start_6
    iget-object v0, p0, Lg;->f:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    check-cast v0, Ljava/lang/reflect/Constructor;

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 19
    invoke-static {p1}, Ln56;->K(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    :goto_6
    instance-of v0, p1, Lsj7$a;

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, p1

    .line 21
    :goto_7
    check-cast v5, Ljava/lang/Throwable;

    return-object v5
.end method
