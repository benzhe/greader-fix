.class public final Lrs5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltt5;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldr5;",
            "Lut5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lys5;

.field public c:I

.field public d:Lju5;

.field public e:J

.field public final f:Lps5;


# direct methods
.method public constructor <init>(Lps5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrs5;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Lys5;

    invoke-direct {v0}, Lys5;-><init>()V

    iput-object v0, p0, Lrs5;->b:Lys5;

    .line 4
    sget-object v0, Lju5;->f:Lju5;

    iput-object v0, p0, Lrs5;->d:Lju5;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lrs5;->e:J

    .line 6
    iput-object p1, p0, Lrs5;->f:Lps5;

    return-void
.end method


# virtual methods
.method public a(Lut5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrs5;->a:Ljava/util/Map;

    .line 2
    iget-object v1, p1, Lut5;->a:Ldr5;

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p1, Lut5;->b:I

    .line 5
    iget v1, p0, Lrs5;->c:I

    if-le v0, v1, :cond_0

    .line 6
    iput v0, p0, Lrs5;->c:I

    .line 7
    :cond_0
    iget-wide v0, p1, Lut5;->c:J

    .line 8
    iget-wide v2, p0, Lrs5;->e:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 9
    iput-wide v0, p0, Lrs5;->e:J

    :cond_1
    return-void
.end method

.method public b(Ldr5;)Lut5;
    .locals 1

    .line 1
    iget-object v0, p0, Lrs5;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lut5;

    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lrs5;->c:I

    return v0
.end method

.method public d(I)Lln5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrs5;->b:Lys5;

    invoke-virtual {v0, p1}, Lys5;->d(I)Lln5;

    move-result-object p1

    return-object p1
.end method

.method public e()Lju5;
    .locals 1

    .line 1
    iget-object v0, p0, Lrs5;->d:Lju5;

    return-object v0
.end method

.method public f(Lln5;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrs5;->b:Lys5;

    invoke-virtual {v0, p1, p2}, Lys5;->b(Lln5;I)V

    .line 2
    iget-object p2, p0, Lrs5;->f:Lps5;

    .line 3
    iget-object p2, p2, Lps5;->f:Lxs5;

    .line 4
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lln5$a;

    invoke-virtual {v0}, Lln5$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu5;

    .line 5
    invoke-interface {p2, v0}, Lxs5;->h(Lbu5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lut5;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lrs5;->a(Lut5;)V

    return-void
.end method

.method public h(Lju5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrs5;->d:Lju5;

    return-void
.end method

.method public i(Lln5;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lln5<",
            "Lbu5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrs5;->b:Lys5;

    invoke-virtual {v0, p1, p2}, Lys5;->f(Lln5;I)V

    .line 2
    iget-object p2, p0, Lrs5;->f:Lps5;

    .line 3
    iget-object p2, p2, Lps5;->f:Lxs5;

    .line 4
    invoke-virtual {p1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lln5$a;

    invoke-virtual {v0}, Lln5$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu5;

    .line 5
    invoke-interface {p2, v0}, Lxs5;->i(Lbu5;)V

    goto :goto_0

    :cond_0
    return-void
.end method
