.class public final Laj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi3;


# instance fields
.field public final e:[Lzi3;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzi3;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lte3;

.field public h:Lyi3;

.field public i:Lse3;

.field public j:Ljava/lang/Object;

.field public k:I

.field public l:Lcj3;


# direct methods
.method public varargs constructor <init>([Lzi3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Laj3;->e:[Lzi3;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Laj3;->f:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Lte3;

    invoke-direct {p1}, Lte3;-><init>()V

    iput-object p1, p0, Laj3;->g:Lte3;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Laj3;->k:I

    return-void
.end method


# virtual methods
.method public final a(Lde3;ZLyi3;)V
    .locals 2

    .line 1
    iput-object p3, p0, Laj3;->h:Lyi3;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Laj3;->e:[Lzi3;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 3
    aget-object v0, v0, p3

    new-instance v1, Ldj3;

    invoke-direct {v1, p0, p3}, Ldj3;-><init>(Laj3;I)V

    invoke-interface {v0, p1, p2, v1}, Lzi3;->a(Lde3;ZLyi3;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILik3;)Lxi3;
    .locals 4

    .line 1
    iget-object v0, p0, Laj3;->e:[Lzi3;

    array-length v0, v0

    new-array v1, v0, [Lxi3;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Laj3;->e:[Lzi3;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lzi3;->b(ILik3;)Lxi3;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lbj3;

    invoke-direct {p1, v1}, Lbj3;-><init>([Lxi3;)V

    return-object p1
.end method

.method public final c(Lxi3;)V
    .locals 3

    .line 1
    check-cast p1, Lbj3;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Laj3;->e:[Lzi3;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    iget-object v2, p1, Lbj3;->e:[Lxi3;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lzi3;->c(Lxi3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laj3;->l:Lcj3;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Laj3;->e:[Lzi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lzi3;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    throw v0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Laj3;->e:[Lzi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lzi3;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
