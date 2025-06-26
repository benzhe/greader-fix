.class public Lo97$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le57$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lo97;


# direct methods
.method public constructor <init>(Lo97;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo97$a;->a:Lo97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li47;[B)V
    .locals 4

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo97$a;->a:Lo97;

    .line 4
    iget-object v2, v2, Lo97;->g:Lj47;

    .line 5
    iget-object v2, v2, Lj47;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 7
    iget-object v2, p0, Lo97$a;->a:Lo97;

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v2, Lo97;->p:Z

    const-string v2, "?"

    .line 9
    invoke-static {v1, v2}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    sget-object v2, Lde5;->a:Lde5;

    .line 11
    invoke-virtual {v2, p2}, Lde5;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_0
    :try_start_0
    iget-object p2, p0, Lo97$a;->a:Lo97;

    .line 13
    iget-object p2, p2, Lo97;->m:Lo97$b;

    .line 14
    iget-object p2, p2, Lo97$b;->B:Ljava/lang/Object;

    .line 15
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v2, p0, Lo97$a;->a:Lo97;

    .line 17
    iget-object v2, v2, Lo97;->m:Lo97$b;

    .line 18
    invoke-static {v2, p1, v1}, Lo97$b;->l(Lo97$b;Li47;Ljava/lang/String;)V

    .line 19
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 22
    sget-object p2, Leb7;->a:Lcb7;

    .line 23
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    throw p1
.end method
