.class public final Lpf6$a;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lde6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Laf6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpf6$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laf6;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf6<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpf6$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    iput-object p1, p0, Lpf6$a;->a:Laf6;

    .line 3
    iput-object p2, p0, Lpf6$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg6;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    sget-object v1, Lfg6;->m:Lfg6;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Leg6;->E()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lpf6$a;->a:Laf6;

    invoke-interface {v0}, Laf6;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Leg6;->b()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Leg6;->C()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lpf6$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpf6$b;

    if-eqz v1, :cond_2

    .line 8
    iget-boolean v2, v1, Lpf6$b;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, p1, v0}, Lpf6$b;->a(Leg6;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Leg6;->g0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Leg6;->g()V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Lbe6;

    invoke-direct {v0, p1}, Lbe6;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg6;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lgg6;->c()Lgg6;

    .line 3
    :try_start_0
    iget-object v0, p0, Lpf6$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpf6$b;

    .line 4
    invoke-virtual {v1, p2}, Lpf6$b;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v1, Lpf6$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lgg6;->i(Ljava/lang/String;)Lgg6;

    .line 6
    invoke-virtual {v1, p1, p2}, Lpf6$b;->b(Lgg6;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lgg6;->g()Lgg6;

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
