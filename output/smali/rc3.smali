.class public final Lrc3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x4c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lid3;->e:Lxb3;

    .line 2
    iget-object v2, v2, Lxb3;->a:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lid3;->h:Lgl1$b;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lkw1;->g:Lkw1;

    goto :goto_0

    :cond_0
    sget-object v0, Lkw1;->f:Lkw1;

    .line 6
    :goto_0
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 8
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 9
    :cond_1
    iget-object v1, v1, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, v0}, Lgl1;->j0(Lgl1;Lkw1;)V

    return-void
.end method
