.class public final Ljm;
.super Llm;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lnk;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnk;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljm;->f:Lnk;

    iput-object p2, p0, Ljm;->g:Ljava/lang/String;

    invoke-direct {p0}, Llm;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljm;->f:Lnk;

    .line 2
    iget-object v0, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Llg;->c()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ljm;->g:Ljava/lang/String;

    check-cast v1, Lfm;

    invoke-virtual {v1, v2}, Lfm;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Ljm;->f:Lnk;

    invoke-virtual {p0, v3, v2}, Llm;->a(Lnk;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Llg;->g()V

    .line 10
    iget-object v0, p0, Ljm;->f:Lnk;

    .line 11
    iget-object v1, v0, Lnk;->b:Lpj;

    .line 12
    iget-object v2, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 13
    iget-object v0, v0, Lnk;->e:Ljava/util/List;

    .line 14
    invoke-static {v1, v2, v0}, Ljk;->a(Lpj;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    invoke-virtual {v0}, Llg;->g()V

    .line 16
    throw v1
.end method
