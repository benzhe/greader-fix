.class public final Lvc3;
.super Lid3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0xb

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lid3;->e:Lxb3;

    .line 2
    iget-object v3, v3, Lxb3;->a:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 6
    iput-boolean v4, v0, Ls63$b;->g:Z

    .line 7
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1, v2}, Lgl1;->f0(Lgl1;J)V

    return-void
.end method
