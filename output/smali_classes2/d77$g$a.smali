.class public Ld77$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77$g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ld77$g;


# direct methods
.method public constructor <init>(Ld77$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$g$a;->e:Ld77$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld77$g$a;->e:Ld77$g;

    iget-object v1, v0, Ld77$g;->c:Ld77;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Ld77;->n:Ln57;

    .line 3
    iget-object v3, v1, Ld77;->v:Lx47;

    if-eqz v3, :cond_1

    .line 4
    iget-object v0, v1, Ld77;->t:Lc87;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    .line 5
    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Ld77$g$a;->e:Ld77$g;

    iget-object v1, v0, Ld77$g;->a:Ld67;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 7
    iget-object v0, v0, Ld77;->v:Lx47;

    .line 8
    invoke-interface {v1, v0}, Lc87;->b(Lx47;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, v1, Ld77;->s:Ld67;

    .line 10
    iget-object v0, v0, Ld77$g;->a:Ld67;

    if-ne v3, v0, :cond_2

    .line 11
    iput-object v0, v1, Ld77;->t:Lc87;

    .line 12
    iget-object v0, p0, Ld77$g$a;->e:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 13
    iput-object v2, v0, Ld77;->s:Ld67;

    .line 14
    sget-object v1, Li37;->f:Li37;

    .line 15
    iget-object v2, v0, Ld77;->k:Lb57;

    invoke-virtual {v2}, Lb57;->d()V

    .line 16
    invoke-static {v1}, Lj37;->a(Li37;)Lj37;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld77;->j(Lj37;)V

    :cond_2
    :goto_1
    return-void
.end method
