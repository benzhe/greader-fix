.class public final Lve7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve7$b;,
        Lve7$c;,
        Lve7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lve7;->f:Ljava/lang/Iterable;

    return-void
.end method

.method public static w(Lx38;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx38<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmi7;->e:Lmi7;

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Lx38;->e(Ly38;)V

    .line 3
    invoke-interface {p0}, Lx38;->a()V

    return-void

    .line 4
    :cond_0
    instance-of v0, p0, Lfd7;

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lve7$b;

    move-object v1, p0

    check-cast v1, Lfd7;

    invoke-direct {v0, v1, p1}, Lve7$b;-><init>(Lfd7;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lx38;->e(Ly38;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lve7$c;

    invoke-direct {v0, p0, p1}, Lve7$c;-><init>(Lx38;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lx38;->e(Ly38;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p0, v0}, Lx38;->e(Ly38;)V

    .line 9
    invoke-interface {p0, p1}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lve7;->f:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p1, v0}, Lve7;->w(Lx38;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 4
    sget-object v1, Lmi7;->e:Lmi7;

    invoke-interface {p1, v1}, Lx38;->e(Ly38;)V

    .line 5
    invoke-interface {p1, v0}, Lx38;->b(Ljava/lang/Throwable;)V

    return-void
.end method
