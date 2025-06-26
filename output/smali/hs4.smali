.class public final Lhs4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lny4;

.field public final synthetic f:Lis4;


# direct methods
.method public constructor <init>(Lis4;Lny4;)V
    .locals 0

    iput-object p1, p0, Lhs4;->f:Lis4;

    iput-object p2, p0, Lhs4;->e:Lny4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lhs4;->e:Lny4;

    .line 1
    invoke-interface {v0}, Lny4;->o()Lc35;

    invoke-static {}, Lc35;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhs4;->e:Lny4;

    .line 2
    invoke-interface {v0}, Lny4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lhs4;->f:Lis4;

    .line 3
    iget-wide v0, v0, Lis4;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lhs4;->f:Lis4;

    .line 5
    iput-wide v2, v1, Lis4;->c:J

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lhs4;->f:Lis4;

    .line 7
    invoke-virtual {v0}, Lis4;->a()V

    :cond_2
    return-void
.end method
