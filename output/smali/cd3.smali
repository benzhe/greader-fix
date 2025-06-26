.class public final Lcd3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public final l:Ldc3;

.field public m:J


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILdc3;)V
    .locals 7

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iput-object p6, p0, Lcd3;->l:Ldc3;

    if-eqz p6, :cond_0

    .line 3
    invoke-virtual {p6}, Ldc3;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcd3;->m:J

    :cond_0
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
    iget-object v0, p0, Lcd3;->l:Ldc3;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lid3;->h:Lgl1$b;

    iget-object v1, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcd3;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 5
    iput-boolean v5, v0, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lgl1;

    invoke-static {v0, v1, v2}, Lgl1;->H(Lgl1;J)V

    :cond_1
    return-void
.end method
