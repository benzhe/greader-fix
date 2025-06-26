.class public Lh67$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh67;->i(Lc47$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lh67$f;

.field public final synthetic f:La67;


# direct methods
.method public constructor <init>(Lh67;Lh67$f;La67;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh67$e;->e:Lh67$f;

    iput-object p3, p0, Lh67$e;->f:La67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lh67$e;->e:Lh67$f;

    iget-object v1, p0, Lh67$e;->f:La67;

    .line 2
    iget-object v2, v0, Lh67$f;->j:Ll37;

    invoke-virtual {v2}, Ll37;->b()Ll37;

    move-result-object v2

    .line 3
    :try_start_0
    iget-object v3, v0, Lh67$f;->i:Lc47$f;

    .line 4
    move-object v4, v3

    check-cast v4, Ll87;

    .line 5
    iget-object v4, v4, Ll87;->c:Lj47;

    .line 6
    move-object v5, v3

    check-cast v5, Ll87;

    .line 7
    iget-object v5, v5, Ll87;->b:Li47;

    .line 8
    check-cast v3, Ll87;

    .line 9
    iget-object v3, v3, Ll87;->a:Lx27;

    .line 10
    invoke-interface {v1, v4, v5, v3}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v3, v0, Lh67$f;->j:Ll37;

    invoke-virtual {v3, v2}, Ll37;->i(Ll37;)V

    .line 12
    invoke-virtual {v0, v1}, Li67;->q(Ly57;)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    iget-object v0, v0, Lh67$f;->j:Ll37;

    invoke-virtual {v0, v2}, Ll37;->i(Ll37;)V

    throw v1
.end method
