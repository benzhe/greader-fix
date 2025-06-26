.class public final Ltc3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0xc

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    .line 2
    iget-boolean v1, v0, Ls63$b;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 4
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Lgl1;->i0(Lgl1;J)V

    .line 6
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lid3;->e:Lxb3;

    .line 7
    iget-object v5, v5, Lxb3;->a:Landroid/content/Context;

    aput-object v5, v4, v2

    .line 8
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 9
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 11
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 12
    :cond_1
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v3, v4}, Lgl1;->i0(Lgl1;J)V

    return-void
.end method
