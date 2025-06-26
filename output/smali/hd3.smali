.class public final Lhd3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/view/View;)V
    .locals 7

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iput-object p6, p0, Lhd3;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhd3;->l:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Ly40;->K1:Lo40;

    .line 3
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    .line 6
    iget-object v1, p0, Lid3;->e:Lxb3;

    .line 7
    iget-object v1, v1, Lxb3;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lhd3;->l:Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    new-instance v2, Lec3;

    invoke-direct {v2, v1}, Lec3;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lgl1$f;->y()Lgl1$f$a;

    move-result-object v1

    .line 13
    iget-object v3, v2, Lec3;->b:Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 15
    iget-boolean v5, v1, Ls63$b;->g:Z

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 17
    iput-boolean v6, v1, Ls63$b;->g:Z

    .line 18
    :cond_0
    iget-object v5, v1, Ls63$b;->f:Ls63;

    check-cast v5, Lgl1$f;

    invoke-static {v5, v3, v4}, Lgl1$f;->x(Lgl1$f;J)V

    .line 19
    iget-object v3, v2, Lec3;->c:Ljava/lang/Long;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 21
    iget-boolean v5, v1, Ls63$b;->g:Z

    if-eqz v5, :cond_1

    .line 22
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 23
    iput-boolean v6, v1, Ls63$b;->g:Z

    .line 24
    :cond_1
    iget-object v5, v1, Ls63$b;->f:Ls63;

    check-cast v5, Lgl1$f;

    invoke-static {v5, v3, v4}, Lgl1$f;->A(Lgl1$f;J)V

    .line 25
    iget-object v3, v2, Lec3;->d:Ljava/lang/Long;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 27
    iget-boolean v5, v1, Ls63$b;->g:Z

    if-eqz v5, :cond_2

    .line 28
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 29
    iput-boolean v6, v1, Ls63$b;->g:Z

    .line 30
    :cond_2
    iget-object v5, v1, Ls63$b;->f:Ls63;

    check-cast v5, Lgl1$f;

    invoke-static {v5, v3, v4}, Lgl1$f;->B(Lgl1$f;J)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, v2, Lec3;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 33
    iget-boolean v0, v1, Ls63$b;->g:Z

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 35
    iput-boolean v6, v1, Ls63$b;->g:Z

    .line 36
    :cond_3
    iget-object v0, v1, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1$f;

    invoke-static {v0, v2, v3}, Lgl1$f;->D(Lgl1$f;J)V

    .line 37
    :cond_4
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object v1

    check-cast v1, Ls63;

    check-cast v1, Lgl1$f;

    .line 38
    iget-boolean v2, v0, Ls63$b;->g:Z

    if-eqz v2, :cond_5

    .line 39
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 40
    iput-boolean v6, v0, Ls63$b;->g:Z

    .line 41
    :cond_5
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1}, Lgl1;->D(Lgl1;Lgl1$f;)V

    :cond_6
    return-void
.end method
