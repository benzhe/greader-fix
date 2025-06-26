.class public Lhw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhw6$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhw6$b;Lhw6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhw6;->a:Landroid/content/Context;

    .line 3
    iget-boolean p1, p2, Lhw6$b;->a:Z

    iput-boolean p1, p0, Lhw6;->b:Z

    .line 4
    iget p1, p2, Lhw6$b;->b:I

    iput p1, p0, Lhw6;->c:I

    .line 5
    iget-boolean p1, p2, Lhw6$b;->c:Z

    iput-boolean p1, p0, Lhw6;->d:Z

    .line 6
    iget-boolean p1, p2, Lhw6$b;->d:Z

    iput-boolean p1, p0, Lhw6;->e:Z

    .line 7
    iget p1, p2, Lhw6$b;->e:I

    iput p1, p0, Lhw6;->f:I

    .line 8
    iget p1, p2, Lhw6$b;->f:I

    iput p1, p0, Lhw6;->g:I

    .line 9
    iget-boolean p1, p2, Lhw6$b;->g:Z

    iput-boolean p1, p0, Lhw6;->h:Z

    .line 10
    iget-boolean p1, p2, Lhw6$b;->h:Z

    iput-boolean p1, p0, Lhw6;->i:Z

    .line 11
    iget-boolean p1, p2, Lhw6$b;->i:Z

    iput-boolean p1, p0, Lhw6;->j:Z

    .line 12
    iget-boolean p1, p2, Lhw6$b;->j:Z

    iput-boolean p1, p0, Lhw6;->k:Z

    .line 13
    iget-boolean p1, p2, Lhw6$b;->k:Z

    iput-boolean p1, p0, Lhw6;->l:Z

    .line 14
    iget-boolean p1, p2, Lhw6$b;->l:Z

    iput-boolean p1, p0, Lhw6;->m:Z

    .line 15
    iget p1, p2, Lhw6$b;->m:I

    iput p1, p0, Lhw6;->n:I

    .line 16
    iget p1, p2, Lhw6$b;->n:I

    iput p1, p0, Lhw6;->o:I

    .line 17
    iget p1, p2, Lhw6$b;->o:I

    iput p1, p0, Lhw6;->p:I

    .line 18
    iget p1, p2, Lhw6$b;->p:I

    iput p1, p0, Lhw6;->q:I

    .line 19
    iget p1, p2, Lhw6$b;->q:I

    iput p1, p0, Lhw6;->r:I

    .line 20
    iget p1, p2, Lhw6$b;->r:I

    iput p1, p0, Lhw6;->s:I

    .line 21
    iget p1, p2, Lhw6$b;->s:I

    iput p1, p0, Lhw6;->t:I

    .line 22
    iget-boolean p1, p2, Lhw6$b;->t:Z

    iput-boolean p1, p0, Lhw6;->u:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lhw6;
    .locals 4

    .line 1
    new-instance v0, Lhw6$b;

    invoke-direct {v0}, Lhw6$b;-><init>()V

    const-string v1, "feed_only"

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    iput-boolean v1, v0, Lhw6$b;->a:Z

    const-string v1, "item_list_view"

    .line 4
    invoke-static {p0, v1, v2}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 5
    iput v1, v0, Lhw6$b;->b:I

    .line 6
    invoke-static {p0}, Liw6;->R(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lhw6$b;->c:Z

    const-string v1, "view_unread_only"

    const/4 v3, 0x1

    .line 7
    invoke-static {p0, v1, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 8
    iput-boolean v1, v0, Lhw6$b;->d:Z

    .line 9
    invoke-static {p0}, Liw6;->l(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->e:I

    .line 10
    invoke-static {p0}, Liw6;->x(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->f:I

    const-string v1, "item_group_by_feed"

    .line 11
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 12
    iput-boolean v1, v0, Lhw6$b;->g:Z

    .line 13
    invoke-static {p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lhw6$b;->h:Z

    .line 14
    invoke-static {p0}, Liw6;->P(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lhw6$b;->i:Z

    .line 15
    invoke-static {p0}, Liw6;->O(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lhw6$b;->j:Z

    const-string v1, "show_feeds_after_mark_all"

    .line 16
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    iput-boolean v1, v0, Lhw6$b;->k:Z

    .line 18
    invoke-static {p0}, Liw6;->N(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lhw6$b;->l:Z

    .line 19
    invoke-static {p0}, Liw6;->j(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->m:I

    .line 20
    invoke-static {p0}, Liw6;->J(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->n:I

    .line 21
    invoke-static {p0}, Liw6;->s(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->o:I

    .line 22
    invoke-static {p0}, Liw6;->o(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->p:I

    .line 23
    invoke-static {p0}, Liw6;->p(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->q:I

    .line 24
    invoke-static {p0}, Liw6;->q(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->r:I

    .line 25
    invoke-static {p0}, Liw6;->r(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lhw6$b;->s:I

    const-string v1, "offline_save_page_on_star"

    .line 26
    invoke-static {p0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    iput-boolean v1, v0, Lhw6$b;->t:Z

    .line 28
    new-instance v1, Lhw6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lhw6;-><init>(Landroid/content/Context;Lhw6$b;Lhw6$a;)V

    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lhw6;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhw6;->a:Landroid/content/Context;

    invoke-static {v0}, Liw6;->l(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhw6;->f:I

    .line 2
    :cond_0
    iget v0, p0, Lhw6;->f:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lhw6;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhw6;->a:Landroid/content/Context;

    invoke-static {v0}, Liw6;->x(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhw6;->g:I

    .line 2
    :cond_0
    iget v0, p0, Lhw6;->g:I

    return v0
.end method

.method public d(I)V
    .locals 2

    .line 1
    iput p1, p0, Lhw6;->f:I

    .line 2
    iget-object v0, p0, Lhw6;->a:Landroid/content/Context;

    .line 3
    sget-object v1, Liw6;->a:Ljava/lang/reflect/Method;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "feed_sort_type"

    invoke-static {v0, v1, p1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
