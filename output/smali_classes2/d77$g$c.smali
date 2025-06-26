.class public Ld77$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77$g;->c()V
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
    iput-object p1, p0, Ld77$g$c;->e:Ld77$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld77$g$c;->e:Ld77$g;

    iget-object v1, v0, Ld77$g;->c:Ld77;

    .line 2
    iget-object v1, v1, Ld77;->q:Ljava/util/Collection;

    .line 3
    iget-object v0, v0, Ld77$g;->a:Ld67;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ld77$g$c;->e:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 5
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 6
    iget-object v0, v0, Lj37;->a:Li37;

    .line 7
    sget-object v1, Li37;->i:Li37;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld77$g$c;->e:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 8
    iget-object v0, v0, Ld77;->q:Ljava/util/Collection;

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Ld77$g$c;->e:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 11
    iget-object v1, v0, Ld77;->k:Lb57;

    new-instance v2, Lh77;

    invoke-direct {v2, v0}, Lh77;-><init>(Ld77;)V

    .line 12
    iget-object v0, v1, Lb57;->f:Ljava/util/Queue;

    const-string v3, "runnable is null"

    invoke-static {v2, v3}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v1}, Lb57;->a()V

    :cond_0
    return-void
.end method
