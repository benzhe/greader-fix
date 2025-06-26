.class public final Llf6;
.super Lgg6;
.source "SourceFile"


# static fields
.field public static final s:Ljava/io/Writer;

.field public static final t:Lyd6;


# instance fields
.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltd6;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/String;

.field public r:Ltd6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llf6$a;

    invoke-direct {v0}, Llf6$a;-><init>()V

    sput-object v0, Llf6;->s:Ljava/io/Writer;

    .line 2
    new-instance v0, Lyd6;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lyd6;-><init>(Ljava/lang/String;)V

    sput-object v0, Llf6;->t:Lyd6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Llf6;->s:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lgg6;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llf6;->p:Ljava/util/List;

    .line 3
    sget-object v0, Lvd6;->a:Lvd6;

    iput-object v0, p0, Llf6;->r:Ltd6;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Number;)Lgg6;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lvd6;->a:Lvd6;

    invoke-virtual {p0, p1}, Llf6;->L(Ltd6;)V

    return-object p0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lgg6;->j:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Lyd6;

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method

.method public D(Ljava/lang/String;)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lvd6;->a:Lvd6;

    invoke-virtual {p0, p1}, Llf6;->L(Ltd6;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lyd6;

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method

.method public E(Z)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lyd6;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method

.method public final I()Ltd6;
    .locals 2

    .line 1
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltd6;

    return-object v0
.end method

.method public final L(Ltd6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llf6;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lvd6;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lgg6;->m:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Llf6;->I()Ltd6;

    move-result-object v0

    check-cast v0, Lwd6;

    .line 5
    iget-object v1, p0, Llf6;->q:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lwd6;->a:Lze6;

    invoke-virtual {v0, v1, p1}, Lze6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Llf6;->q:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iput-object p1, p0, Llf6;->r:Ltd6;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Llf6;->I()Ltd6;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lqd6;

    if-eqz v1, :cond_4

    .line 12
    check-cast v0, Lqd6;

    .line 13
    iget-object v0, v0, Lqd6;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()Lgg6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lqd6;

    invoke-direct {v0}, Lqd6;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    .line 3
    iget-object v1, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lgg6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lwd6;

    invoke-direct {v0}, Lwd6;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    .line 3
    iget-object v1, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    sget-object v1, Llf6;->t:Lyd6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lgg6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llf6;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Llf6;->I()Ltd6;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lqd6;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public g()Lgg6;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llf6;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Llf6;->I()Ltd6;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lwd6;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public i(Ljava/lang/String;)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Llf6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llf6;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Llf6;->I()Ltd6;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lwd6;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Llf6;->q:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public m()Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lvd6;->a:Lvd6;

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method

.method public x(J)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lyd6;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method

.method public y(Ljava/lang/Boolean;)Lgg6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lvd6;->a:Lvd6;

    invoke-virtual {p0, p1}, Llf6;->L(Ltd6;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lyd6;

    invoke-direct {v0, p1}, Lyd6;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Llf6;->L(Ltd6;)V

    return-object p0
.end method
