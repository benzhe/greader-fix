.class public Lwh;
.super Lqh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwh$b;
    }
.end annotation


# instance fields
.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqh;",
            ">;"
        }
    .end annotation
.end field

.field public C:Z

.field public D:I

.field public E:Z

.field public F:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqh;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lwh;->C:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lwh;->E:Z

    .line 5
    iput v0, p0, Lwh;->F:I

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lqh;->I()V

    .line 3
    invoke-virtual {p0}, Lqh;->o()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lwh$b;

    invoke-direct {v0, p0}, Lwh$b;-><init>(Lwh;)V

    .line 5
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    .line 6
    invoke-virtual {v2, v0}, Lqh;->b(Lqh$d;)Lqh;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lwh;->D:I

    .line 8
    iget-boolean v0, p0, Lwh;->C:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    .line 11
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    .line 12
    new-instance v3, Lwh$a;

    invoke-direct {v3, p0, v2}, Lwh$a;-><init>(Lwh;Lqh;)V

    invoke-virtual {v1, v3}, Lqh;->b(Lqh$d;)Lqh;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqh;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lqh;->A()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    .line 16
    invoke-virtual {v1}, Lqh;->A()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic B(J)Lqh;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lwh;->M(J)Lwh;

    return-object p0
.end method

.method public D(Lqh$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lqh;->w:Lqh$c;

    .line 2
    iget v0, p0, Lwh;->F:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lwh;->F:I

    .line 3
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->D(Lqh$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic E(Landroid/animation/TimeInterpolator;)Lqh;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwh;->N(Landroid/animation/TimeInterpolator;)Lwh;

    return-object p0
.end method

.method public F(Lnh;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lqh;->z:Lnh;

    iput-object v0, p0, Lqh;->x:Lnh;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lqh;->x:Lnh;

    .line 3
    :goto_0
    iget v0, p0, Lwh;->F:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lwh;->F:I

    .line 4
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    invoke-virtual {v1, p1}, Lqh;->F(Lnh;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public G(Lvh;)V
    .locals 3

    .line 1
    iget v0, p0, Lwh;->F:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lwh;->F:I

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->G(Lvh;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(J)Lqh;
    .locals 0

    .line 1
    iput-wide p1, p0, Lqh;->f:J

    return-object p0
.end method

.method public J(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lqh;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 3
    invoke-static {v0, v2}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lqh;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public K(Lqh;)Lwh;
    .locals 5

    .line 1
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Lqh;->m:Lwh;

    .line 3
    iget-wide v0, p0, Lqh;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Lqh;->B(J)Lqh;

    .line 5
    :cond_0
    iget v0, p0, Lwh;->F:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lqh;->h:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Lqh;->E(Landroid/animation/TimeInterpolator;)Lqh;

    .line 8
    :cond_1
    iget v0, p0, Lwh;->F:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lqh;->G(Lvh;)V

    .line 10
    :cond_2
    iget v0, p0, Lwh;->F:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lqh;->x:Lnh;

    .line 12
    invoke-virtual {p1, v0}, Lqh;->F(Lnh;)V

    .line 13
    :cond_3
    iget v0, p0, Lwh;->F:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lqh;->w:Lqh$c;

    .line 15
    invoke-virtual {p1, v0}, Lqh;->D(Lqh$c;)V

    :cond_4
    return-object p0
.end method

.method public L(I)Lqh;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqh;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public M(J)Lwh;
    .locals 3

    .line 1
    iput-wide p1, p0, Lqh;->g:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1, p2}, Lqh;->B(J)Lqh;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public N(Landroid/animation/TimeInterpolator;)Lwh;
    .locals 3

    .line 1
    iget v0, p0, Lwh;->F:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwh;->F:I

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->E(Landroid/animation/TimeInterpolator;)Lqh;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lqh;->h:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public O(I)Lwh;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lwh;->C:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lwh;->C:Z

    :goto_0
    return-object p0
.end method

.method public b(Lqh$d;)Lqh;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lqh;->b(Lqh$d;)Lqh;

    return-object p0
.end method

.method public c(Landroid/view/View;)Lqh;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    invoke-virtual {v1, p1}, Lqh;->c(Landroid/view/View;)Lqh;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lqh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lwh;->k()Lqh;

    move-result-object v0

    return-object v0
.end method

.method public e(Lyh;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lyh;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lqh;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    .line 3
    iget-object v2, p1, Lyh;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lqh;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lqh;->e(Lyh;)V

    .line 5
    iget-object v2, p1, Lyh;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lyh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->g(Lyh;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lyh;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lyh;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lqh;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    .line 3
    iget-object v2, p1, Lyh;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lqh;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lqh;->h(Lyh;)V

    .line 5
    iget-object v2, p1, Lyh;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Lqh;
    .locals 5

    .line 1
    invoke-super {p0}, Lqh;->k()Lqh;

    move-result-object v0

    check-cast v0, Lwh;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lwh;->B:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqh;

    invoke-virtual {v3}, Lqh;->k()Lqh;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Lqh;->m:Lwh;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Lzh;Lzh;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lzh;",
            "Lzh;",
            "Ljava/util/ArrayList<",
            "Lyh;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lyh;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lqh;->f:J

    .line 2
    iget-object v3, v0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lqh;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Lwh;->C:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    iget-wide v9, v6, Lqh;->f:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Lqh;->H(J)Lqh;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Lqh;->H(J)Lqh;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Lqh;->m(Landroid/view/ViewGroup;Lzh;Lzh;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lqh;->w(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->w(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(Lqh$d;)Lqh;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lqh;->x(Lqh$d;)Lqh;

    return-object p0
.end method

.method public y(Landroid/view/View;)Lqh;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqh;

    invoke-virtual {v1, p1}, Lqh;->y(Landroid/view/View;)Lqh;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lqh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public z(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lqh;->z(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lwh;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqh;

    invoke-virtual {v2, p1}, Lqh;->z(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
