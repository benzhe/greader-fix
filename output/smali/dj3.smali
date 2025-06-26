.class public final Ldj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi3;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Laj3;


# direct methods
.method public constructor <init>(Laj3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldj3;->f:Laj3;

    iput p2, p0, Ldj3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lse3;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ldj3;->f:Laj3;

    iget v1, p0, Ldj3;->e:I

    .line 2
    iget-object v2, v0, Laj3;->l:Lcj3;

    if-nez v2, :cond_3

    .line 3
    invoke-virtual {p1}, Lse3;->g()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 4
    iget-object v4, v0, Laj3;->g:Lte3;

    invoke-virtual {p1, v3, v4}, Lse3;->c(ILte3;)Lte3;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget v2, v0, Laj3;->k:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {p1}, Lse3;->h()I

    move-result v2

    iput v2, v0, Laj3;->k:I

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lse3;->h()I

    move-result v2

    iget v3, v0, Laj3;->k:I

    if-eq v2, v3, :cond_2

    .line 8
    new-instance v2, Lcj3;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcj3;-><init>(I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 9
    :goto_2
    iput-object v2, v0, Laj3;->l:Lcj3;

    .line 10
    :cond_3
    iget-object v2, v0, Laj3;->l:Lcj3;

    if-eqz v2, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    iget-object v2, v0, Laj3;->f:Ljava/util/ArrayList;

    iget-object v3, v0, Laj3;->e:[Lzi3;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_5

    .line 12
    iput-object p1, v0, Laj3;->i:Lse3;

    .line 13
    iput-object p2, v0, Laj3;->j:Ljava/lang/Object;

    .line 14
    :cond_5
    iget-object p1, v0, Laj3;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, v0, Laj3;->h:Lyi3;

    iget-object p2, v0, Laj3;->i:Lse3;

    iget-object v0, v0, Laj3;->j:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lyi3;->f(Lse3;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method
